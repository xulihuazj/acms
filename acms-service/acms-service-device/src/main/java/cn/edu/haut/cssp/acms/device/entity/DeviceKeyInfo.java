package cn.edu.haut.cssp.acms.device.entity;

import java.io.Serializable;

/**
 * 
 * 
 * Project Name：oms-service-device-api
 * ClassName：TerminalKeyInfo
 * Description：
 * @author: 谢文超
 * @date: 2015-10-28 下午3:34:37
 * note:
 *
 */
public class DeviceKeyInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	//'帐户名称'
	private String account;
	
	//'卡号'
	private String cardno;
	
	//'Kuepri密文（使用设备加密证书公钥加密  kupri）'
	private String kuepriEnc;
	
	//'设备加密证书SN(安通设备或Usbkey)'
	private String kdepCertSn;
	
	//'加密证书'
	private String cert;
	
	//'关联t_account_kuep表id'
	private Long kuepId;
	
	//设备加密证书算法类型 1-RSA 2-SM2
	private Integer alg;
	
	//'添加设备状态：0-未执行；1-执行'
	private Integer status;
		
	//'操作类型：0-添加；1-删除'
	private Integer opt;

	/**
	 * @return 返回{@linkplain #id}
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param 设定{@linkplain #id}
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return 返回{@linkplain #account}
	 */
	public String getAccount() {
		return account;
	}

	/**
	 * @param 设定{@linkplain #account}
	 */
	public void setAccount(String account) {
		this.account = account;
	}

	/**
	 * @return 返回{@linkplain #cardno}
	 */
	public String getCardno() {
		return cardno;
	}

	/**
	 * @param 设定{@linkplain #cardno}
	 */
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}

	/**
	 * @return 返回{@linkplain #kuepriEnc}
	 */
	public String getKuepriEnc() {
		return kuepriEnc;
	}

	/**
	 * @param 设定{@linkplain #kuepriEnc}
	 */
	public void setKuepriEnc(String kuepriEnc) {
		this.kuepriEnc = kuepriEnc;
	}

	/**
	 * @return 返回{@linkplain #kdepCertSn}
	 */
	public String getKdepCertSn() {
		return kdepCertSn;
	}

	/**
	 * @param 设定{@linkplain #kdepCertSn}
	 */
	public void setKdepCertSn(String kdepCertSn) {
		this.kdepCertSn = kdepCertSn;
	}

	/**
	 * @return 返回{@linkplain #cert}
	 */
	public String getCert() {
		return cert;
	}

	/**
	 * @param 设定{@linkplain #cert}
	 */
	public void setCert(String cert) {
		this.cert = cert;
	}

	/**
	 * @return 返回{@linkplain #kuepId}
	 */
	public Long getKuepId() {
		return kuepId;
	}

	/**
	 * @param 设定{@linkplain #kuepId}
	 */
	public void setKuepId(Long kuepId) {
		this.kuepId = kuepId;
	}

	/**
	 * @return 返回{@linkplain #status}
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @param 设定{@linkplain #status}
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @return 返回{@linkplain #opt}
	 */
	public Integer getOpt() {
		return opt;
	}

	/**
	 * @param 设定{@linkplain #opt}
	 */
	public void setOpt(Integer opt) {
		this.opt = opt;
	}

	/**
	 * @return 返回{@linkplain #alg}
	 */
	public Integer getAlg() {
		return alg;
	}

	/**
	 * @param 设定{@linkplain #alg}
	 */
	public void setAlg(Integer alg) {
		this.alg = alg;
	}
	
	
}
