package cn.edu.haut.cssp.acms.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class HttpSessionUtil {

	/**
	 * 获取request对象
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:30:37
	 * @return
	 */
	public static HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}

	/**
	 * 获取系统部署的根路径
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:30:43
	 * @return
	 */
	public static String getRootPath() {
		return ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
	}

	/**
	 * 获得session唯一编号
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:30:49
	 * @return
	 */
	public static String getSessionId() {
		return getRequest().getSession().getId();
	}

	/**
	 * 获取系统部署的根路径
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:30:56
	 * @return
	 */
	public static String getTempFilePath() {
		return ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/temp");
	}
}
