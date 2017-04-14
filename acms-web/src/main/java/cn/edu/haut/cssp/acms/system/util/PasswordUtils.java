package cn.edu.haut.cssp.acms.system.util;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.Sha1Hash;

/**
 * 密码工具类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午12:44:40
 */
public class PasswordUtils {
	
	/**
	 * MD5加密方法
	 * @author: xulihua
	 * @date: 2017年1月5日下午12:50:46
	 * @return: String
	 */
	public static final String encodePasswordMd5(String password){
		return new Md5Hash(password).toHex().toLowerCase();
	}
	
	/**
	 * sha1 加密方法
	 * @author: xulihua
	 * @date: 2017年1月5日下午12:52:10
	 * @return: String
	 */
	public static final String encodePasswordSHA1(String password){
		return new Sha1Hash(password).toHex().toLowerCase();
	}
}
