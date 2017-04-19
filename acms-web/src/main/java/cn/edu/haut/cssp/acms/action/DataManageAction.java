package cn.edu.haut.cssp.acms.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.entity.TUser;

@Controller
public class DataManageAction {

	
	@RequestMapping("/data/dataHandleList.do")
	public String dataHandleList(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-statistics.jsp";
	}
}
