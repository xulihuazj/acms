package cn.edu.haut.cssp.acms.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.entity.TUser;

/**
 * 帮助中心Action
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月17日下午11:25:39
 * @note:
 */
@Controller
public class HelpManageAction {

	/**
	 * 登录相关问题
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午11:30:14
	 * @return
	 */
	@RequestMapping("/help/loginRelate.do")
	public String loginRelate(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-guide-login.jsp";
	}
	
	/**
	 * 应用相关问题
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午11:30:31
	 * @return
	 */
	@RequestMapping("/help/applicationRelate.do")
	public String applicationRelate(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-guide-handle.jsp";
	}
	
	/**
	 * 人员管理相关问题
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午11:30:43
	 * @return
	 */
	@RequestMapping("/help/personManageRelate.do")
	public String personManageRelate(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-guide-person.jsp";
	}
	
	/**'
	 * 设备管理相关问题
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午11:31:07
	 * @return
	 */
	@RequestMapping("/help/deviceManageRelate.do")
	public String deviceManageRelate(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-guide-device.jsp";
	}
}
