package cn.edu.haut.cssp.acms.util;

import java.util.UUID;

/**
 * UUID工具类
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:28:11
 * @note:
 */
public class UUIDUtil {

	
	/**
	 * 获取UUID
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:27:50
	 * @return
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
