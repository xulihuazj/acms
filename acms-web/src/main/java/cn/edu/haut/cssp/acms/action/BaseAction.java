package cn.edu.haut.cssp.acms.action;

import java.beans.PropertyEditorSupport;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;

import com.xdja.platform.log.Logger;
import com.xdja.platform.log.LoggerFactory;

import cn.edu.haut.cssp.acms.common.SpringBeanUtil;

public class BaseAction {
	protected final transient Logger logger;
	public static final String SUCCESS = "success";

	public BaseAction() {
		this.logger = LoggerFactory.getLogger(super.getClass());
	}

	@InitBinder
	public void initBinder(WebDataBinder binder, HttpServletRequest request) {
		for (PropertyEditorSupport editor : SpringBeanUtil.getBeansOfType(PropertyEditorSupport.class))
			binder.registerCustomEditor(String.class, editor);
	}

	public void renderText(HttpServletResponse response, String text) {
		render(response, "text/plain;charset=UTF-8", text);
	}

	public void renderJson(HttpServletResponse response, String text) {
		render(response, "application/json;charset=UTF-8", text);
	}

	public void renderXml(HttpServletResponse response, String text) {
		render(response, "text/xml;charset=UTF-8", text);
	}


	public void render(HttpServletResponse response, String contentType, String text) {
		response.setContentType(contentType);
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0L);
		try {
			response.getWriter().write(text);
		} catch (IOException e) {
			this.logger.error(e.getMessage(), e);
		}
	}


	@ExceptionHandler

	protected String findMatchingViewName(Properties exceptionMappings, Exception ex) {
		if (exceptionMappings == null)
			return null;

		String viewName = null;
		String dominantMapping = null;
		int deepest = 2147483647;
		for (Enumeration names = exceptionMappings.propertyNames(); names.hasMoreElements();) {
			String exceptionMapping = (String) names.nextElement();
			int depth = getDepth(exceptionMapping, ex);
			if ((depth >= 0) && (((depth < deepest) || ((depth == deepest) && (dominantMapping != null)
					&& (exceptionMapping.length() > dominantMapping.length()))))) {
				deepest = depth;
				dominantMapping = exceptionMapping;
				viewName = exceptionMappings.getProperty(exceptionMapping);
			}
		}

		if ((viewName != null) && (this.logger.isDebugEnabled())) {
			this.logger.debug("Resolving to view '{}' for exception of type [{}], based on exception mapping [{}]",
					new Object[] { viewName, ex.getClass().getName(), dominantMapping });
		}

		return viewName;
	}

	protected int getDepth(String exceptionMapping, Exception ex) {
		return getDepth(exceptionMapping, ex.getClass(), 0);
	}

	private int getDepth(String exceptionMapping, Class<?> exceptionClass, int depth) {
		if (exceptionClass.getName().contains(exceptionMapping)) {
			return depth;
		}

		if (exceptionClass.equals(Throwable.class)) {
			return -1;
		}
		return getDepth(exceptionMapping, exceptionClass.getSuperclass(), depth + 1);
	}
}