package cn.edu.haut.cssp.acms.web.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * 登录首页/404错误
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午4:43:30
 * @note
 */
@Controller
public class IndexAction {

	
	@RequestMapping(value = "/index.do", produces = "application/json;charset=utf-8")
	public String index(HttpServletRequest request) {
		return "/login.jsp";
	}
	
	@RequestMapping(value = "/404.do", method = RequestMethod.GET)
	public String pagenotfound(Boolean sessionTimeoutFlag, ModelMap model) {
		return "/404.html";
	}
}
