package cn.edu.haut.cssp.acms.web.action;

import java.awt.Color;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.patchca.color.SingleColorFactory;
import org.patchca.filter.predefined.CurvesRippleFilterFactory;
import org.patchca.font.RandomFontFactory;
import org.patchca.service.ConfigurableCaptchaService;
import org.patchca.utils.encoder.EncoderHelper;
import org.patchca.word.RandomWordFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 登录首页/404错误
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午4:43:30
 * @note
 */
@Controller
public class IndexAction {

	
	@RequestMapping(value = "/index.do")
	public String index(HttpServletRequest request) {
		return "/homepage.jsp";
	}
	
	@RequestMapping(value = "/404.do", method = RequestMethod.GET)
	public String pagenotfound(Boolean sessionTimeoutFlag, ModelMap model) {
		return "/page-404.html";
	}
	
	@RequestMapping("/loginPage.do")
	public String loginPage(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) {
/*		ConfigurableCaptchaService captchaService = new ConfigurableCaptchaService();
		//设置颜色
		captchaService.setColorFactory(new SingleColorFactory(new Color(25, 60, 170)));
		captchaService.setFilterFactory(new CurvesRippleFilterFactory(captchaService.getColorFactory()));
		// 设置字体
		RandomFontFactory fontFactory = new RandomFontFactory();
		fontFactory.setMinSize(35);
		fontFactory.setMaxSize(35);
		// 设置字体大小
		RandomWordFactory wordFactory = new RandomWordFactory();
		wordFactory.setMinLength(4);
		wordFactory.setMaxLength(4);
		captchaService.setWordFactory(wordFactory);
		captchaService.setFontFactory(fontFactory);
		// 设置图片大小
		captchaService.setHeight(50);
		captchaService.setWidth(140);
		try {
			ImageIO.write(captchaService.getCaptcha().getImage(), "JPEG", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		modelMap.put("cs", captchaService.getCaptcha().getImage());
		System.out.println(captchaService.getCaptcha().getImage());
		try {
			ServletOutputStream stream = response.getOutputStream();
			String validate_code = EncoderHelper.getChallangeAndWriteImage(captchaService, "png", stream);
			//存入session中
			request.getSession().setAttribute("reg_val_code", validate_code);
			stream.flush();
			stream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		return "/page-login.jsp";
	}
	
	@RequestMapping("/validationCode.do")
	public void validationCode(HttpServletRequest request, HttpServletResponse response){
		ConfigurableCaptchaService captchaService = new ConfigurableCaptchaService();
		//设置颜色
		captchaService.setColorFactory(new SingleColorFactory(new Color(25, 60, 170)));
		captchaService.setFilterFactory(new CurvesRippleFilterFactory(captchaService.getColorFactory()));
		// 设置字体
		RandomFontFactory fontFactory = new RandomFontFactory();
		fontFactory.setMinSize(35);
		fontFactory.setMaxSize(35);
		// 设置字体大小
		RandomWordFactory wordFactory = new RandomWordFactory();
		wordFactory.setMinLength(4);
		wordFactory.setMaxLength(4);
		captchaService.setWordFactory(wordFactory);
		captchaService.setFontFactory(fontFactory);
		// 设置图片大小
		captchaService.setHeight(50);
		captchaService.setWidth(140);
/*		try {
			ImageIO.write(captchaService.getCaptcha().getImage(), "JPEG", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}*/
		try {
			setResponseHeaders(response);
			ServletOutputStream stream = response.getOutputStream();
			String validate_code = EncoderHelper.getChallangeAndWriteImage(captchaService, "png", stream);
			//存入session中
			request.getSession().setAttribute("reg_val_code", validate_code);
			stream.flush();
			stream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
    protected void setResponseHeaders(HttpServletResponse response) {
        response.setContentType("image/png");
        response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
        long time = System.currentTimeMillis();
        response.setDateHeader("Last-Modified", time);
        response.setDateHeader("Date", time);
        response.setDateHeader("Expires", time);
    }
}
