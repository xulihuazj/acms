package cn.edu.haut.cssp.acms.core.entity;

import java.io.Serializable;

/**
 * t_sys_permission 实体类
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年5月27日上午11:49:21
 * @note:
 */
public class TSysPermission implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private String name;
	
	private String type;
	
	private String link;
	
	private String percode;
	
	private Integer parentid;
	
	private Integer sortstring;
	
	private String parentids;
	
	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPercode() {
		return percode;
	}

	public void setPercode(String percode) {
		this.percode = percode;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public Integer getSortstring() {
		return sortstring;
	}

	public void setSortstring(Integer sortstring) {
		this.sortstring = sortstring;
	}

	public String getParentids() {
		return parentids;
	}

	public void setParentids(String parentids) {
		this.parentids = parentids;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	

}
