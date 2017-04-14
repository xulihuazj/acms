package cn.edu.haut.cssp.acms.action;

import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.xdja.platform.log.LoggerExtData;
import com.xdja.platform.security.utils.OperatorUtil;
import com.xdja.platform.security.utils.PasswordUtils;
import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TRole;
import cn.edu.haut.cssp.acms.core.entity.TSystemLog;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.json.DataTablesParameters;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.service.IPersonService;
import cn.edu.haut.cssp.acms.system.service.IRoleService;
import cn.edu.haut.cssp.acms.system.service.IUserService;
import cn.edu.haut.cssp.acms.util.EncoderUtil;

/**
 * 用户管理员ACTION
 * Description:用户管理Action类
 * @author: xulihua
 * @date: 2017年1月5日下午12:04:01
 */
@Controller
@RequestMapping("/user")
public class UserManagerAction extends BaseAction{
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IRoleService roleServcie;
	
	/**
	 * 分页获取管理员信息
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:42:26
	 * @return: Object 返回json格式数据
	 */
	@RequestMapping(value = "/system/ajaxList.do", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public Object ajaList(TUser condition, DataQueryExt queryExt, DateQueryBean queryBean) {
		DataTablesParameters tables = DataTablesParameters.newInstance();
		LitePaging<TUser> pagination = userService.queryAllUsers(condition, queryExt, queryBean); 
		return tables.getDataTablesReply(pagination);
		
	}
	
	/**
	 * 修改登录密码页面
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:50:33
	 * @return: String
	 * @param:
	 */
	@RequestMapping("/system/toModifyPsd.do")
	public String toModifyPsd(){
		return "system/modifyPsd";
	}
	
	/**
	 * 修改登录密码
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:35:27
	 * @return: Object
	 * @param:
	 */
	@RequestMapping(value = "/system/modifyPsd.do", method = RequestMethod.GET, produces = "applicaiton/json;charset=utf-8")
	@ResponseBody
	public Object modifyPsd(String oldPwd, String newPwd, String comfirePwd) {
		// 从session中获取当前用户
		TUser currUser = OperatorUtil.getOperator().getCurrUser();
		//旧、新、确认密码不为空
		if(StringUtils.isNotBlank(oldPwd) && StringUtils.isNotBlank(newPwd)
				&& StringUtils.isNotBlank(comfirePwd)){
			// 旧密码是否相等、新密码与确认密码是否相等
			if(!PasswordUtils.encodePasswordSHA1(oldPwd).equals(currUser.getPassword())){
				return "旧密码不正确!";
			} else if(StringUtils.equals(newPwd, comfirePwd)) {
				return "新密码与确认密码不相等";
			} else {
				// 新密码加密
				currUser.setPassword(PasswordUtils.encodePasswordSHA1(newPwd));
				userService.updateUser(currUser);
			}
		}
		return SUCCESS;
	}
	
	/**
	 * 删除管理员（软删除）
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:21:18
	 * @return: String
	 * @param
	 */
	@RequestMapping(value = "/system/deleteUser.do", method = RequestMethod.GET)
	public String deleteUser(Long userId) {
		String message = SUCCESS;
		// 从sessoino中获取
		//TUser currUser = OperatorUtil.getOperator().getCurrUser();
		TUser currUser = null;
		TUser user = userService.findUserById(userId);
		try {
			user.setStatus(TUser.ENUM_USER_STATUS.deletedStatus.value);
			userService.updateUser(user);
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modeType", TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),
					"管理员{}删除{}用户成功", currUser.getUserName(),
					user.getUserName());
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("删除管理员参数异常", e);
		} catch (Exception e) {
			message = "删除管理员失败";
			logger.error("删除管理员失败，异常信息为", e);
		}
		return message;
	}
	
	/**
	 * 停用管理员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:22:22
	 * @return: String
	 * @param
	 */
	@RequestMapping("/system/stopUser.do")
	public String stopUser(Long userId) {
		String message = SUCCESS;
		// 从session中获取当前操作者
		TUser currUser = OperatorUtil.getOperator().getCurrUser();
		TUser user = userService.findUserById(userId);
		try{
			user.setStatus(TUser.ENUM_USER_STATUS.deletedStatus.value);
			userService.updateUser(user);
			// 日志
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),"管理员{}停用{}用户成功",currUser.getUserName()
					,user.getUserName());
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("停用管理员时参数异常",e);
		} catch (Exception e) {
			message = "停用管理员失败";
			logger.error("停用管理员失败，异常信息为",e);
		}
		return message;
	}
	
	/**
	 * （停用后）启用管理员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午12:00:42
	 * @return: void
	 * @param:
	 */
	@RequestMapping("/system/startUser.do")
	@ResponseBody
	public Object startUser(Long userId) {
		String message = SUCCESS;
		// 从session中获取当前操作者
		TUser currUser = OperatorUtil.getOperator().getCurrUser();
		// 需要启用的用户
		TUser user = userService.findUserById(userId);
		try{
			user.setStatus(TUser.ENUM_USER_STATUS.normalStatus.value);
			userService.updateUser(user);
			// 日志
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),"管理员{}启用{}用户成功",currUser.getUserName()
					,user.getUserName());
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("启用管理员时参数异常",e);
		} catch (Exception e) {
			message = "启用管理员失败";
			logger.error("启用管理员失败，异常信息为",e);
		}
		return message;
	}
	
	/**
	 * 检测用户名是否重复
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:57:55
	 * @return: Object
	 * @param:
	 */
	@RequestMapping(value = "/system/checkUserName.do", method=RequestMethod.GET )
	@ResponseBody
	public Object checkUserName(String userName) {
		return userService.isNameExist(userName) ? EncoderUtil.encode("用户名重复") : SUCCESS;
		
	} 
	
	/**
	 * 管理员添加用户
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:14:17
	 * @return: String
	 * @param:
	 */
	@RequestMapping("/system/addUser.do")
	public String addUser(ModelMap modelMap) {
		
		List<TRole> roles = roleServcie.queryListRoles();
		modelMap.put("roles", roles);
		return "system/user/add";
	}
	
	/**
	 * 保存管理员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:21:43
	 * @return: void
	 * @param:
	 */
	@RequestMapping("/system/saveUser.do")
	@ResponseBody
	public Object saveUser(TUser user, Long[] roleId) {
		String message = SUCCESS;
		TUser currUser = OperatorUtil.getOperator().getCurrUser();
		try {
			userService.saveUser(user, roleId);
			if(null != user.getId()) {
				logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType",
						TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}修改{}用户成功", currUser.getUserName(),
						user.getUserName());
			} else {
				logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType",
						TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value), "管理员{}添加{}用户成功", currUser.getUserName(),
						user.getUserName());
			}
		} catch (IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("用户保存时参数异常", e);
		} catch (Exception e) {
			message = "保存用户失败";
			logger.error("保存用户失败，异常信息为", e);
		}
		return message;
	}
	
	/**
	 * 编辑管理员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:32:08
	 * @return: String
	 * @param:
	 */
	@RequestMapping("/system/editUser.do")
	@ResponseBody
	public String editUser(Long userId, ModelMap modelMap) {
		TUser user = userService.findUserById(userId);
		List<TRole> roles = roleServcie.queryListRolesOrCheck(userId);
		modelMap.put("user", user);
		modelMap.put("roles", roles);
		return "system/user/edit";
	}
	
	
}
