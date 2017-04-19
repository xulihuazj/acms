package cn.edu.haut.cssp.acms.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.entity.TUser;

/**
 * 门禁出入日志ACTION
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月18日上午12:34:34
 * @note:
 */
@Controller
public class EntranceManageAction {

	
	@RequestMapping("/turnover/ajaxTurnoverList.do")
	public String ajaxTurnoverList(ModelMap modelMap, HttpSession session) {
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-turnover.jsp";
	}
	
		
	@RequestMapping("/turnover/queryDormAList.do")
	public String queryDormAList(ModelMap modelMap, HttpSession session) {
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-turnover-dorm.jsp";
	}
}
