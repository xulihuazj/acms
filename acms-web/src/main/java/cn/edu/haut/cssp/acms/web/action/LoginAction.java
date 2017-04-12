package cn.edu.haut.cssp.acms.web.action;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.octo.captcha.service.image.ImageCaptchaService;
import com.xdja.platform.security.utils.OperatorUtil;

import cn.edu.haut.cssp.acms.action.BaseAction;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IFunctionService;
import cn.edu.haut.cssp.acms.system.service.IUserService;
import cn.edu.haut.cssp.acms.util.PasswordUtils;

/**
 * 登录退出管理Action Description:
 * 
 * @author: xulihua
 * @date: 2017年1月5日上午11:08:34
 */
@Controller
public class LoginAction extends BaseAction {

	private static final Logger logger = LoggerFactory.getLogger(LoginAction.class);

	// 注入service
	/*
	 * @Autowired private IUserService userService;
	 */

	/*
	 * @Autowired private IFunctionService functionService;
	 */

	/**
	 * 登录
	 * 
	 * @author: xulihua
	 * @date: 2017年1月18日下午1:31:19
	 * @return: String
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(String loginUsername, String loginPassword, String loginVerifycode, ModelMap model,
			HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		if (StringUtils.isBlank(loginUsername)) {
			model.put("message", "用户名不能为空!");
		} else if (StringUtils.isBlank(loginPassword)) {
			model.put("message", "密码不能为空！");
		} else if (StringUtils.isBlank(loginVerifycode)) {
			model.put("message", "验证码不能为空！");
		} /*
			 * else
			 * if(!imageCaptchaService.validateResponseForID(request.getSession(
			 * ).getId(), loginVerifycode)) { model.put("message",
			 * "验证码不正确，请点击刷新后重试!"); }
			 */else {
			boolean isLogined = true;
			try {
				/* TODO shiro 权限管理 */
				// UsernamePasswordToken token = new
				// UsernamePasswordToken(loginUsername,loginPassword);
				// SecurityUtils.getSubject().login(token);
				Map<String, String> map = new HashMap<String, String>();
				map.put("username", loginUsername);
				map.put("password", PasswordUtils.encodePasswordSHA1(loginPassword));
				// 根据用户名和密码查询用户信息
				// TUser currUser = userService.selectUserByNameAndPass(map);
				TUser currUser = null;
				currUser.setUserName("xulihua");
				currUser.setPassword("111111");
				if (null == currUser) {
					model.put("message", "当前账号不存在");
					return "homepage.jsp";
				}
				// 存入session
				session.setAttribute("currUser", currUser);
				return "redirect:/homepage.jsp";
			/*} catch (LockedAccountException e) {
				isLogined = false;
				model.put("message", "用户已经被锁定");
			} catch (UnknownAccountException e) {
				isLogined = false;
				model.put("message", "用户名或密码错误");
			} catch (IncorrectCredentialsException e) {
				isLogined = false;
				model.put("message", "用户名或密码错误");
			} catch (AuthenticationException e) {
				isLogined = false;
				model.put("message", e.getMessage());
			}*/
			}catch(Exception e){
				model.put("message", "用户名或密码错误");
			}
			/*if (isLogined) {
				 TUser user = userService.getUserByUserName(userName);
				TUser user = null;
				 OperatorUtil.setOperator(new Operator(userName,
				 functionService.queryAllFunctions(user)));
				OperatorUtil.getOperator().setCurrUser(user);
				logger.info("管理员{}登录成功", user.getUserName());
				return "redirect:/index.do";
			}*/
		}
		model.put("userName", loginUsername);
		model.put("error", true);
		return "/page-login.jsp";
	}

	/**
	 * 退出登录
	 * 
	 * @author: xulihua
	 * @date: 2017年1月18日下午4:31:01
	 * @return: String
	 */
	@RequestMapping("/logout.do")
	public String logout(HttpServletResponse response) {
		TUser user = OperatorUtil.getOperator().getCurrUser();
		logger.info("管理员：{}退出成功", user.getUserName());
		SecurityUtils.getSubject().logout();
		return "redirect:/login.do";
	}

	// 校验码service注入
	@Autowired
	private ImageCaptchaService imageCaptchaService;

	/**
	 * 生成验证码
	 * 
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月3日下午8:45:54
	 * @param request
	 * @param response
	 */
	@RequestMapping("/captcha.do")
	public void handleRequest(HttpServletRequest request, HttpServletResponse response) {
		try {
			ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
			String captchaId = request.getSession().getId();
			BufferedImage challenge = imageCaptchaService.getImageChallengeForID(captchaId, request.getLocale());

			response.setHeader("Cache-Control", "no-store");
			response.setHeader("Pragma", "no-cache");
			response.setDateHeader("Expires", 0L);
			response.setContentType("image/jpeg");

			ImageIO.write(challenge, "jpeg", jpegOutputStream);
			byte[] captchaChallengeAsJpeg = jpegOutputStream.toByteArray();

			ServletOutputStream respOs = response.getOutputStream();
			respOs.write(captchaChallengeAsJpeg);
			respOs.flush();
			respOs.close();
		} catch (IOException e) {
			logger.error("生成校验码失败: {}", e.getMessage());
		}
	}

}
