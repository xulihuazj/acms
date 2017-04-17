package cn.edu.haut.cssp.acms.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.xdja.platform.log.LoggerExtData;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TRole;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.json.DataTablesParameters;
import cn.edu.haut.cssp.acms.log.entity.SystemLog;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.service.IRoleService;
import cn.edu.haut.cssp.acms.util.EncoderUtil;
import cn.edu.haut.cssp.acms.util.OperatorUtil;
import cn.edu.haut.cssp.acms.util.WebConstants;

/**
 * 角色管理action类
 * Description:
 * @author: xulihua
 * @date: 2017年1月19日下午4:18:09
 * @note
 */
@Controller
public class RoleManagerAction extends BaseAction {
	
	@Autowired
	private IRoleService roleService;
	
	/**
	 * 角色管理列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:23:14
	 * @return
	 */
	@RequestMapping("/system/role/index.do")
	public String index() {
		return "/page-role.jsp";
	}

	/**
	 * 分页查询用户信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:23:25
	 * @param roleCondition
	 * @return
	 */
	@RequestMapping("/system/role/ajaxList.do")
	@ResponseBody
	public Object ajaxList(TRole roleCondition, DataQueryExt queryExt, DateQueryBean queryBean) {
		DataTablesParameters tables = DataTablesParameters.newInstance();
		LitePaging<TRole> pagination = roleService.queryAllRoles(roleCondition, queryExt, queryBean);
		return tables.getDataTablesReply(pagination);
	}
	
	@RequestMapping("/system/role/ajaxRoleList.do")
	public Object ajaxRoleList() {
		List<TRole> roleList = roleService.ajaxRoleList();
		return roleList;
	}
	
	/**
	 * 
	 * @Description：跳转至角色添加页面
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/system/role/addRole.do")
	public String addRole(ModelMap modelMap) {
		//modelMap.addAttribute("roleFuncTree", toJsonStr(roleService.queryAllFunctions(null)));
		try {
			modelMap.put("roleFuncTree", new ObjectMapper().writeValueAsString(roleService.queryAllFunctions(null)));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "system/role/add";
	}
	
	/**
	 * 保存角色
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:24:32
	 * @param role
	 * @param funcIds
	 * @param response
	 */
	@RequestMapping("/system/role/saveRole.do")
	public void saveRole(TRole role, Long funcIds, HttpServletResponse response) {
		String message = SUCCESS;
		TUser user = OperatorUtil.getOperator().getCurrUser();
		try {
			roleService.saveRole(role, funcIds);
			
			//根据操作类型保存日志信息
			if (null == role.getId()) {
				logger.info(SystemLog.ENUM_LOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					SystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}添加角色{}成功",
					user.getUserName(), role.getName());
			} else {
				logger.info(SystemLog.ENUM_LOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					SystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}修改角色{}成功",
					user.getUserName(), role.getName());
			}
		} catch (IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("管理员{}保存角色{}时参数异常", user.getUserName(), role.getName());
		} catch (Exception e) {
			message = "保存角色失败";
			logger.error("管理员{}保存角色{}时出现异常", user.getUserName(), role.getName());
		}
		renderText(response, message);
	}
	
	/**
	 * 跳转至角色编辑页面
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:24:57
	 * @param roleId
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/system/role/ediAcmsRole.do")
	public String ediAcmsRole(Long roleId, ModelMap modelMap) {
		TRole role = roleService.getRoleById(roleId);
		//modelMap.addAttribute("roleFuncTree", toJsonStr(roleService.queryAllFunctions(roleId)));
		try {
			modelMap.addAttribute("roleFuncTree", new ObjectMapper().writeValueAsString(roleService.queryAllFunctions(roleId)));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		modelMap.addAttribute("role", role);
		return "system/role/edit";
	}
	
	/**
	 * 删除角色
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:25:06
	 * @param roleId
	 * @param roleName
	 * @param response
	 */
	@RequestMapping("/system/role/delRole.do")
	public void delRole(Long roleId, String roleName, HttpServletResponse response) {
		String message = SUCCESS;
		TUser user = OperatorUtil.getOperator().getCurrUser();
		try {
			Boolean isSuccDel = roleService.deleteRoleById(roleId);
			if (!isSuccDel) {
				message = "当前角色被用户绑定，不允许删除！";

				//保存日志信息
				logger.info(SystemLog.ENUM_LOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					SystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}删除{}角色失败，当前角色已被用户绑定", 
					user.getUserName(), roleName);
			} else {
				//保存日志信息
				logger.info(SystemLog.ENUM_LOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					SystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}删除{}角色成功", 
					user.getUserName(), roleName);
			}
		} catch (IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("管理员{}删除{}角色时参数异常", user.getUserName(), roleName);
		} catch (Exception e) {
			message = "删除角色失败";
			logger.error("管理员{}删除{}角色时异常", user.getUserName(), roleName);
		}
		renderText(response, message);
	}
	
	/**
	 * 校验角色名是否重复
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:25:34
	 * @param roleId
	 * @param name
	 * @return
	 */
	@RequestMapping("/system/role/checkRoleName.do")
	@ResponseBody
	public Object checkRoleName(Long roleId, String name) {
		try {
			return roleService.isRoleNameExist(roleId, name) ? EncoderUtil.encode("角色名重复") : SUCCESS;
		} catch (Exception e) {
			logger.error("服务异常", e);
			return EncoderUtil.encode(WebConstants.SERVICE_BREAKE);
		}
	}
}
