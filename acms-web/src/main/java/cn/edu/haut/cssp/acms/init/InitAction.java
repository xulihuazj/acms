package cn.edu.haut.cssp.acms.init;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.action.BaseAction;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IInitService;

/**
 * 系统初始化
 * Description:
 * @author: xulihua
 * @date: 2017年1月19日下午3:58:19
 * @note
 */
public class InitAction extends BaseAction{
	
	@Autowired
	private IInitService initService;
	
	/**
	 * 检测acms 系统是否初始化
	 * @author: xulihua
	 * @date: 2017年3月9日下午12:53:48
	 * @return: String
	 */
	@RequestMapping("/init/initAdmin.do")
	public String queryData(){
		boolean sysInit = initService.isSysInit();
		if(sysInit){
			// 已经初始化过，跳转到登录页面
			return "redirect:/login.do";
		}else{
			//跳转到初始化页面
			return "redirect:/adminInit";
		}
	}
	
	/**
	 * 系统初始化，添加管理员
	 * @author: xulihua
	 * @date: 2017年3月9日下午1:01:36
	 * @return: void
	 */
	@RequestMapping("/init/saveUser.do")
	public void saveUser(TUser user,HttpServletResponse response){
		String message = SUCCESS;
		try{
			initService.saveInitUser(user);
		}catch(IllegalArgumentException e){
			message = e.getMessage();
			logger.error("系统初始化参数异常", e);
		}catch (Exception e) {
			message = "系统初始化异常";
			logger.error("系统初始化异常", e);
		}
		renderText(response, message);
	}
	
	/**
	 * 跳转至系统初始化页面
	 * @author: xulihua
	 * @date: 2017年3月9日下午1:06:23
	 * @return: String
	 */
	@RequestMapping("/init/initPage.do")
	public String addInit(){
		return "init/initPage";
	}
	
}
