package cn.edu.haut.cssp.acms.util;

/**
 * 转码工具类(action resposebody 字符串转码)
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:32:28
 * @note:
 */
public class EncoderUtil {

	/**
	 * 默认私有构造
	  * 类的构造方法
	  * 创建一个新的实例 EncoderUtil.
	 */
	private EncoderUtil () {}
	
	public static final String[] TABLE_HTML = new String[256];
	static {
		for (int i = 0; i < 10; i++) {
			TABLE_HTML[i] = "&#00" + i + ";";
		}
		for (int i = 10; i < 32; i++) {
			TABLE_HTML[i] = "&#0" + i + ";";
		}
		for (int i = 32; i < 128; i++) {
			TABLE_HTML[i] = String.valueOf((char) i);
		}
		for (int i = 128; i < 256; i++) {
			TABLE_HTML[i] = "&#" + i + ";";
		}

		// 特殊字符的处理
		TABLE_HTML['\''] = "&#039;"; // apostrophe ('&apos;' doesn't work - it
										// is not by the w3 specs)
		TABLE_HTML['\"'] = "&quot;"; // double quote
		TABLE_HTML['&'] = "&amp;"; // ampersand
		TABLE_HTML['<'] = "&lt;"; // lower than
		TABLE_HTML['>'] = "&gt;"; // greater than

	}

	/**
	 * 编码
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:32:51
	 * @param string
	 * @return
	 */
	public static String encode(String string) {
		float newSizeFactor = 1.3f;
		
		if ((string == null) || (string.length() == 0)) {
			return "";
		}
		int n = string.length();
		StringBuffer buffer = new StringBuffer((int) (n * newSizeFactor));
		int tableLen = TABLE_HTML.length;
		char c;
		for (int i = 0; i < n; i++) {
			c = string.charAt(i);
			if (c < tableLen) {
				buffer.append(TABLE_HTML[c]);
			} else {
				buffer.append("&#").append((int) c).append(';');
			}
		}
		return buffer.toString();
	}
}
