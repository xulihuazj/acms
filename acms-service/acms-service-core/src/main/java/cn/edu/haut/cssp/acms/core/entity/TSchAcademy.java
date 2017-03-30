package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;
import java.util.List;

/**
 * 学院数据库实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:25:43
 */
public class TSchAcademy implements Serializable {

	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键，唯一
	 */
	private Long id;
	
	/**
	 * 学院名称
	 */
	private String acaName;
	
	/**
	 * 学院代号
	 */
	private Long acaSymbol;
	
	/**
	 * 学院关联信息（使用resultMap）
	 */
	private List<TSchClass> schClassList;

	public Long getAcaSymbol() {
		return acaSymbol;
	}

	public void setAcaSymbol(Long acaSymbol) {
		this.acaSymbol = acaSymbol;
	}

	public String getAcaName() {
		return acaName;
	}

	public void setAcaName(String acaName) {
		this.acaName = acaName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
}
