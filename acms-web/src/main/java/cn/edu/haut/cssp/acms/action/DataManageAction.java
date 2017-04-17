package cn.edu.haut.cssp.acms.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DataManageAction {

	
	@RequestMapping("/data/dataHandleList.do")
	public String dataHandleList(){
		return "/page-statistics.jsp";
	}
}
