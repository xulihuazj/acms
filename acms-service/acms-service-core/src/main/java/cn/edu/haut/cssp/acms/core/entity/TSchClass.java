package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;

/**
 * 班级实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:30:50
 */
public class TSchClass implements Serializable{

	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 班级名称
	 */
	private String className;



	/**
	 * @return the className
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * @param className the className to set
	 */
	public void setClassName(String className) {
		this.className = className;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
}
