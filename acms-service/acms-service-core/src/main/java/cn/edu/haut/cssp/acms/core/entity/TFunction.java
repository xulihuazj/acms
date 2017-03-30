package cn.edu.haut.cssp.acms.core.entity;


import java.beans.Transient;
import java.util.LinkedList;
import java.util.List;


/**
 * 实体类(acms_function映射)
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:44:56
 * @note
 */
public class TFunction implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	
	private String name;
	
	private String objName;
	
	private String icon;
	
	private Long parentId;
	
	private String link;
	
	private Integer orderNum;
	
	private Integer status;
	
	private Integer type;

	private List<TFunction> children = new LinkedList<TFunction>();

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getObjName() {
		return this.objName;
	}

	public void setObjName(String objName) {
		this.objName = objName;
	}

	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public Long getParentId() {
		return this.parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Integer getOrderNum() {
		return this.orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	@Transient
	public List<TFunction> getChildren() {
		return children;
	}

	public void setChildren(List<TFunction> children) {
		this.children = children;
	}
	
	/**
	 * 
	 * 
	 * Project Name：pms-service-oms-system-api
	 * ClassName：ENUM_FUNCTION_TYPE
	 * Description：功能类型
	 * @author 马德成
	 * @date 2015-10-21
	 * note:
	 *
	 */
	public enum ENUM_FUNCTION_TYPE {
		/**
		 * 1-系统功能
		 */
		systemFunction(1),
		/**
		 * 2-普通功能
		 */
		consumerFunction(2);

		public Integer value;
		
		private ENUM_FUNCTION_TYPE(Integer value) {
			this.value = value;
		}
	}
	
	public enum ENUM_FUNCTION_STATUS {
		/**
		 * 1-正常
		 */
		normalStatus(1),
		/**
		 * 2-停用
		 */
		stopStatus(2);
		
		public Integer value;
		
		private ENUM_FUNCTION_STATUS(Integer value) {
			this.value = value;
		}
	}
}
