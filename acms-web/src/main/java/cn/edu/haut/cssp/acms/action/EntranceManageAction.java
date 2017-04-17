package cn.edu.haut.cssp.acms.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String ajaxTurnoverList() {
		return "/page-turnover.jsp";
	}
	
		
	@RequestMapping("/turnover/queryDormAList.do")
	public String queryDormAList() {
		return "/page-turnover-dorm.jsp";
	}
}
