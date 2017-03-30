package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;

/**
 * 校园卡数据操作实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:22:59
 */
public class TCampusCard implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 校园卡id
	 */
	private String cardId;
	
	/**
	 * 人员id,对应于人员表id
	 */
	private Long personId;
	
	/**
	 *卡状态，1-正常（默认），2-停用，3-已挂失，4-已删除
	 */
	private Integer carStatus;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public Long getPersonId() {
		return personId;
	}

	public void setPersonId(Long personId) {
		this.personId = personId;
	}

	public Integer getCarStatus() {
		return carStatus;
	}

	public void setCarStatus(Integer carStatus) {
		this.carStatus = carStatus;
	}

	/**
	 * 卡状态，1-正常（默认），2-停用，3-已挂失，4-已删除
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午9:32:03
	 * @note
	 */
	public enum ENUM_CARD_STATUS {
		/**
		 * 正常
		 */
		normal(1),
		/**
		 * 停用
		 */
		suspend(2),
		/**
		 * 已挂失
		 */
		report_loss(3),
		/**
		 * 已删除
		 */
		deleted(4);
		
		public Integer value;
		
		private ENUM_CARD_STATUS(Integer value) {
			this.value = value;
		}
	}
}
