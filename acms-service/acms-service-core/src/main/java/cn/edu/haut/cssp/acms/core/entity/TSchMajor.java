package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;

/**
 * 专业实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:26:59
 */
public class TSchMajor implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键
	 */
	private Long majorId;
	
	/**
	 * 专业名称
	 */
	private String majorName;

	/**
	 * @return the majorId
	 */
	public Long getMajorId() {
		return majorId;
	}

	/**
	 * @param majorId the majorId to set
	 */
	public void setMajorId(Long majorId) {
		this.majorId = majorId;
	}

	/**
	 * @return the majorName
	 */
	public String getMajorName() {
		return majorName;
	}

	/**
	 * @param majorName the majorName to set
	 */
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	
}
