package cn.edu.haut.cssp.acms.util;

import com.xdja.platform.common.lite.kit.prop.Prop;
import com.xdja.platform.common.lite.kit.prop.PropKit;

public class PropUtil {


	/**
	 * 获取系统配置system.properties
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:29:13
	 * @return
	 */
	public static Prop getSystemProp() {
		Prop prop = PropKit.use("system.properties");
		return prop;
	}
}
