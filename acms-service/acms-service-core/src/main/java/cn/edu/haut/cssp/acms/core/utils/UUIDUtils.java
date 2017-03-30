package cn.edu.haut.cssp.acms.core.utils;

import java.util.UUID;

/**
 * UUID处理类
 * Description:
 * @author: xulihua
 * @date: 2017年3月25日上午9:33:23
 * @note
 */
public class UUIDUtils {
	
	/**
	 * 去掉UUID中的"_"
	 * @author: xulihua
	 * @date: 2017年3月25日上午9:34:53
	 * @return: String
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
