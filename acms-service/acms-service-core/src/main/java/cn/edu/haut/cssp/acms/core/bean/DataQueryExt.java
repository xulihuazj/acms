package cn.edu.haut.cssp.acms.core.bean;

import java.io.Serializable;

/**
 * 查询条件包装类
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:44:46
 * @note:
 */
public class DataQueryExt implements Serializable{

	private static final long serialVersionUID = 1L;

	/**
	 * 关键字
	 */
	private String keyWord;
	
	/**
	 * 当前页码号
	 */
	private Integer pageNo;
	
	/**
	 * 每页数据条数
	 */
	private Integer pageSize;
	
	
	

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
}
