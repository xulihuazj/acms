	package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;

/**
 * 宿舍实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:50:02
 */
public class TDormitory implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 宿舍名称
	 */
	private String dorName;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDorName() {
		return dorName;
	}

	public void setDorName(String dorName) {
		this.dorName = dorName;
	}
	
}
