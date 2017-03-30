package cn.edu.haut.cssp.acms.util;

import java.io.IOException;
import java.util.Properties;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;


/**
 * 读取properties文件  工具类
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:29:24
 * @note:
 */
public class PropertiesUtil {
	
	private static Properties props = null;
	private static final Logger logger = LoggerFactory.getLogger(PropertiesUtil.class);
	private ResourceLoader resourceLoader = new DefaultResourceLoader();
	
	/**
	 * 
	  * 类的构造方法
	  * 创建一个新的实例 PropertiesUtil.
	  * @param propertiesName 文件名
	 */
	private PropertiesUtil(String propertiesName ){
			props = new Properties();
			
			Resource resource = resourceLoader.getResource("classpath:"+propertiesName);
		try {
				props.load(resource.getInputStream());
		} catch (IOException e) {
				logger.error("读取配置文件出错", e);
		}
	}
	
	/**
	 * 创建PropertiesUtil
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:29:32
	 * @param propertiesName
	 * @return
	 */
	public static PropertiesUtil createProUtil(String propertiesName) {
		
		return new PropertiesUtil(propertiesName);
	}
	
	/**
	 * 根据key获取其对应值，若取不到返回默认值(String)
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:29:40
	 * @param propkey
	 * @param defaultValue
	 * @return
	 */
	public  String  getPropStringValue(String propkey, String defaultValue) {
		
		 return props.getProperty(propkey, defaultValue);
	}
	
	/**
	 * 根据key获取其对应值，若取不到返回默认值(int)
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:29:52
	 * @param propkey
	 * @param defaultValue
	 * @return
	 */
	public  int  getPropIntValue(String propkey, String defaultValue) {
		
		return Integer.valueOf(props.getProperty(propkey, defaultValue));
	}

}
