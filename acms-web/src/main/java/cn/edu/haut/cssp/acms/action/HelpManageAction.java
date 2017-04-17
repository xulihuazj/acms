package cn.edu.haut.cssp.acms.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String loginRelate(){
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
	public String applicationRelate(){
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
	public String personManageRelate(){
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
	public String deviceManageRelate(){
		return "/page-guide-device.jsp";
	}
}
