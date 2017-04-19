package cn.edu.haut.cssp.acms.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.protocol.HTTP;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.stat.TableStat.Mode;
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
	@RequestMapping(value = "/user/system/ajaxList.do", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public Object ajaList(TUser condition, DataQueryExt queryExt, DateQueryBean queryBean) {
		DataTablesParameters tables = DataTablesParameters.newInstance();
		LitePaging<TUser> pagination = userService.queryAllUsers(condition, queryExt, queryBean); 
		return tables.getDataTablesReply(pagination);
		
	}
	
	@RequestMapping("/user/system/ajaxUserList.do")
	public Object ajaxUserList(HttpSession session,ModelMap modelMap){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		List<TUser> userList = userService.ajaxUserList();
		modelMap.put("userList", userList);
		return "/page-role.jsp";
	}
	
	/**
	 * 修改登录密码页面
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:50:33
	 * @return: String
	 * @param:
	 */
	@RequestMapping("/user/system/toModifyPsd.do")
	public String toModifyPsd(HttpSession session, ModelMap modelMap){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-password.jsp";
	}
	
	/**
	 * 修改登录密码
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:35:27
	 * @return: Object
	 * @param:
	 */
	@RequestMapping( "/user/system/modifyPsd.do")
	@ResponseBody
	public Object modifyPsd(String oldPwd, String newPwd, String comfirePwd, HttpSession session,ModelMap modelMap) {
		Map<String, Object> message = new HashMap<>();
		// 从session中获取当前用户
		TUser currUser = (TUser) session.getAttribute("currUser");
		//旧、新、确认密码不为空
		if(StringUtils.isNotBlank(oldPwd) && StringUtils.isNotBlank(newPwd)
				&& StringUtils.isNotBlank(comfirePwd)){
			// 旧密码是否相等、新密码与确认密码是否相等
			if(!PasswordUtils.encodePasswordSHA1(oldPwd).equals(currUser.getPassword())){
				message.put("message", "旧密码不正确");
				return message;
			} else if(!StringUtils.equals(newPwd, comfirePwd)) {
				message.put("message", "新密码与确认密码不相等");
				return message;
			} else {
				try{
				// 新密码加密
					userService.resetPassword(currUser.getId(), PasswordUtils.encodePasswordSHA1(newPwd));
					message.put("message", SUCCESS);
					return message;
				}catch(Exception e){
					e.printStackTrace();
					logger.error("修改密码失败异常", e);
				}
			}
		}else{
			message.put("message", "密码不能为空");
		}
		return message;
		
	}
	
	/**
	 * 删除管理员（软删除）
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:21:18
	 * @return: String
	 * @param
	 */
	@RequestMapping(value = "/user/system/deleteUser.do", method = RequestMethod.POST)
	@ResponseBody
	public Object deleteUser(Long userId, HttpSession session) {
		Map<String, Object> message = new HashMap<>();
		// 从session中获取当前操作者
		TUser currUser = (TUser) session.getAttribute("currUser");
		TUser user = userService.findUserById(userId);
		try {
			user.setStatus(TUser.ENUM_USER_STATUS.deletedStatus.value);
			userService.updateUser(user);
			message.put("message", SUCCESS);
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modeType", TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),
					"管理员{}删除{}用户成功", currUser.getUserName(),
					user.getUserName());
		} catch(IllegalArgumentException e) {
			message.put("message", "删除管理员参数异常");
			logger.error("删除管理员参数异常", e);
		} catch (Exception e) {
			message.put("message", "删除管理员失败");
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
	@RequestMapping("/user/system/stopUser.do")
	@ResponseBody
	public Object stopUser(Long userId, HttpSession session) {
		Map<String, Object> message = new HashMap<>();
		// 从session中获取当前操作者
		TUser currUser = (TUser) session.getAttribute("currUser");
		TUser user = userService.findUserById(userId);
		try{
			user.setStatus(TUser.ENUM_USER_STATUS.deletedStatus.value);
			userService.updateUser(user);
			message.put("message", SUCCESS);
			// 日志
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),"管理员{}停用{}用户成功",currUser.getUserName()
					,user.getUserName());
		} catch(IllegalArgumentException e) {
			message.put("message", "停用管理员时参数异常");
			logger.error("停用管理员时参数异常",e);
		} catch (Exception e) {
			message.put("message", "停用管理员失败");
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
	@RequestMapping("/user/system/startUser.do")
	@ResponseBody
	public Object startUser(Long userId, HttpSession session) {
		Map<String, Object> message = new HashMap<>();
		// 从session中获取当前操作者
		TUser currUser = (TUser) session.getAttribute("currUser");
		// 需要启用的用户
		TUser user = userService.findUserById(userId);
		try{
			user.setStatus(TUser.ENUM_USER_STATUS.normalStatus.value);
			userService.updateUser(user);
			message.put("message", SUCCESS);
			// 日志
			logger.info(TSystemLog.ENUM_SYSLOG_TYPE.operateLog.value, LoggerExtData.create("modelType", 
					TSystemLog.ENUM_LOG_MODEL_TYPE.systemManagerLog.value),"管理员{}启用{}用户成功",currUser.getUserName()
					,user.getUserName());
		} catch(IllegalArgumentException e) {
			message.put("message", "启用管理员时参数异常");
			logger.error("启用管理员时参数异常",e);
		} catch (Exception e) {
			message.put("message", "启用管理员失败");
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
	@RequestMapping(value = "/user/system/checkUserName.do", method=RequestMethod.GET )
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
	@RequestMapping("/user/system/addUser.do")
	public String addUser(ModelMap modelMap, HttpSession session) {
		
		List<TRole> roles = roleServcie.queryListRoles();
		modelMap.put("roles", roles);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
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
	@RequestMapping(value = "/user/system/saveUser.do", method = RequestMethod.POST)
	@ResponseBody
	public Object saveUser(TUser user, Long[] roleId,HttpSession session) {
		Map<String, Object> message = new HashMap<>();
		TUser currUser = (TUser) session.getAttribute("currUser");
		//Integer integer = userService.saveUser(user, roleId);
		userService.updateUser(user);
		message.put("message", SUCCESS);
		return message;
		/*	try {
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
		return message;*/
	}
	
	/**
	 * 编辑管理员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:32:08
	 * @return: String
	 * @param:
	 */
	@RequestMapping("/user/system/editUser.do")
	@ResponseBody
	public String editUser(Long userId, ModelMap modelMap) {
		TUser user = userService.findUserById(userId);
		List<TRole> roles = roleServcie.queryListRolesOrCheck(userId);
		modelMap.put("user", user);
		modelMap.put("roles", roles);
		return "system/user/edit";
	}
	
	@RequestMapping(value = "/user/getUserByUserName.do", method = RequestMethod.GET)
	public String getUserByUserName(String userName) {
		try{
			Long long1 = new Long(2);
			 System.out.println(userService.findUserById(long1));
		TUser user = userService.getUserByUserName(userName);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "success";
	} 
	
	@RequestMapping("/user/system/deleteUserById.do")
	@ResponseBody
	public Object deleteUserById(Long id) {
		Integer result = userService.suspendUser(id);
		return result;
	}
	
}
