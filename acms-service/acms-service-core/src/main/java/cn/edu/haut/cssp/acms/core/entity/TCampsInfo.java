package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;

/**
 * 校区数据库实体类
 * Description:
 * @author: xulihua
 * @date: 2017年3月24日下午10:00:56
 * @note
 */
public class TCampsInfo implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private String campusName;
	
	private String campusLocale;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCampusName() {
		return campusName;
	}

	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}

	public String getCampusLocale() {
		return campusLocale;
	}

	public void setCampusLocale(String campusLocale) {
		this.campusLocale = campusLocale;
	}
	

}
