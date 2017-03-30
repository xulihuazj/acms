package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;

/**
 *  字典表(添加字典排序)
 * Description:
 * @author: xulihua
 * @date: 2017年3月24日下午11:49:13
 * @note
 */
public class TSysDic implements Serializable {

	private static final long serialVersionUID = 1L;

	//标识
	private Long id;
	
	//代码
	private String code;
	
	//名称
	private String name;
	
	//排序号
	private Long sort;
	
	//父级代码
	private String parentCode = "0";
	
	//各级字典的根编码
	private String rootCode = "0";
	
	//是否多级 1：不允许（默认）； 其他值：允许 ；只有parent_code＝0的字典项有效
	private Integer multiLevel = 1;
	
	//扩展字段
	private String extend;
	
	//描述
	private String note;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public String getRootCode() {
		return rootCode;
	}

	public void setRootCode(String rootCode) {
		this.rootCode = rootCode;
	}

	public Integer getMultiLevel() {
		return multiLevel;
	}

	public void setMultiLevel(Integer multiLevel) {
		this.multiLevel = multiLevel;
	}

	public String getExtend() {
		return extend;
	}

	public void setExtend(String extend) {
		this.extend = extend;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	public Long getSort() {
		return sort;
	}

	public void setSort(Long sort) {
		this.sort = sort;
	}
}