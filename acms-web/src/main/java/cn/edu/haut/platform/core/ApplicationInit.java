package cn.edu.haut.platform.core;


import org.slf4j.Logger;


import cn.edu.haut.cssp.acms.util.WebConstants;

/**
 * cmoms初始化
 * Project Name：cmoms-web
 * ClassName：ApplicationInit
 * Description：
 * @author: shaoyuehua
 * @date: 2016-8-8 下午3:47:32
 * note:
 *
 */
public class ApplicationInit {

/*	private static final Logger logger = LoggerFactory.getLogger(ApplicationInit.class);

	*//**
	 * 系统配置文件
	 *//*
	public static Prop sysProp;
	
	public static Prop conProp;

	*//**
	 * 初始化服务器（注册）
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:04:19
	 * @return: void
	 *//*
	public static void initialize() {
		sysProp = PropKit.use("system.properties");
		
		//初始化https端口
		WebConstants.HTTPS_PORT = sysProp.getInt("https.port", 8443);
		
	}*/
}
