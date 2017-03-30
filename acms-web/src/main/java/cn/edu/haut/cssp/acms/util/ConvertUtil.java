package cn.edu.haut.cssp.acms.util;

/**
 * 字节转义工具
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:34:31
 * @note:
 */
public class ConvertUtil {

	 /* Convert byte[] to hex string.这里我们可以将byte转换成int，然后利用Integer.toHexString(int)来转换成16进制字符串。  
	 * @param src byte[] data  
	  * @return hex string  
	 */     
	 public static String bytesToHexString(byte[] src){  
	     StringBuilder stringBuilder = new StringBuilder("");  
	     if (src == null || src.length <= 0) {  
	         return null;  
	     }  
	     for (int i = 0; i < src.length; i++) {  
	         int v = src[i] & 0xFF;  
	         String hv = Integer.toHexString(v);  
	         if (hv.length() < 2) {  
	             stringBuilder.append(0);  
	         }  
	         stringBuilder.append(hv);  
	     }  
	     return stringBuilder.toString();  
	 }  
	 
	 /** 
	  * Convert hex string to byte[] 
	  * @param hexString the hex string 
	  * @return byte[] 
	  */  
	public static byte[] hexStringToBytes(String hexString) {  
	     if (hexString == null || hexString.equals("")) {  
	        return null;  
	     }  
	     hexString = hexString.toUpperCase();  
	     if (hexString.length() % 2 != 0) {
	    	 hexString = "0" + hexString;
	     }
	     int length = hexString.length() / 2;  
	     char[] hexChars = hexString.toCharArray();  
	     byte[] d = new byte[length];  
	     for (int i = 0; i < length; i++) {  
	         int pos = i * 2;  
	         d[i] = (byte) (charToByte(hexChars[pos]) << 4 | charToByte(hexChars[pos + 1]));  
	    }  
	     return d;  
	}  
	 /** 
	  * Convert char to byte 
	  * @param c char 
	  * @return byte 
	  */  
	  private static byte charToByte(char c) {  
	    return (byte) "0123456789ABCDEF".indexOf(c);  
	 }  


}
