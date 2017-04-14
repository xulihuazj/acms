package cn.edu.haut.cssp.acms.core.entity;


import java.io.Serializable;


/**
 * 人员实体类
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午2:12:38
 */
public class TPerson implements Serializable{

	private static final long serialVersionUID = 1L;

	/**
	 * 主键，自增，唯一
	 */
	private Long id;
	
	/**
	 * 人员所持卡号
	 */
	private String cardSN;
	
	/**
	 * 卡类型
	 */
	private Integer cardType;
	/**
	 * 人员学号id
	 */
	private Long perId;
	/**
	 * 人员类型
	 */
	private Integer perType;
	/**
	 * 人员姓名
	 */
	private String perName;
	/**
	 * 联系电话
	 */
	private String perMobile;
	
	/**
	 * 人员所属学院
	 */
	private String perDepart;
	
	/**
	 * 人员所属专业
	 */
	private String perMajor;
	
	/**
	 * 人员年龄
	 */
	private Long perAge;
	
	/**
	 * 人员性别
	 */
	private Integer perSex;
	
	/**
	 * 人员年级
	 */
	private String perGrade;
	
	/**
	 * 人员身份证
	 */
	private String perIdentificate;

	/**
	 * 人员状态
	 */
	private Integer perStatus;

	public Integer getPerStatus() {
		return perStatus;
	}

	public void setPerStatus(Integer perStatus) {
		this.perStatus = perStatus;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCardSN() {
		return cardSN;
	}

	public void setCardSN(String cardSN) {
		this.cardSN = cardSN;
	}

	public Integer getCardType() {
		return cardType;
	}

	public void setCardType(Integer cardType) {
		this.cardType = cardType;
	}

	public Long getPerId() {
		return perId;
	}

	public void setPerId(Long perId) {
		this.perId = perId;
	}

	public Integer getPerType() {
		return perType;
	}

	public void setPerType(Integer perType) {
		this.perType = perType;
	}

	public String getPerName() {
		return perName;
	}

	public void setPerName(String perName) {
		this.perName = perName;
	}

	public String getPerMobile() {
		return perMobile;
	}

	public void setPerMobile(String perMobile) {
		this.perMobile = perMobile;
	}

	public String getPerDepart() {
		return perDepart;
	}

	public void setPerDepart(String perDepart) {
		this.perDepart = perDepart;
	}

	public String getPerMajor() {
		return perMajor;
	}

	public void setPerMajor(String perMajor) {
		this.perMajor = perMajor;
	}

	public Long getPerAge() {
		return perAge;
	}

	public void setPerAge(Long perAge) {
		this.perAge = perAge;
	}

	public Integer getPerSex() {
		return perSex;
	}

	public void setPerSex(Integer perSex) {
		this.perSex = perSex;
	}

	public String getPerGrade() {
		return perGrade;
	}

	public void setPerGrade(String perGrade) {
		this.perGrade = perGrade;
	}

	public String getPerIdentificate() {
		return perIdentificate;
	}

	public void setPerIdentificate(String perIdentificate) {
		this.perIdentificate = perIdentificate;
	}

	/**
	 * 人员类型：1-教师，2-学生，3-工作人员
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月24日上午12:21:28
	 * @note
	 */
	public enum ENUM_PERSON_TYPE {
		/**
		 * 学生
		 */
		student(1),
		/**
		 * 教师
		 */
		teacher(2),
		/**
		 * 工作人员
		 */
		staff(3);
		
		public Integer value;
		
		private ENUM_PERSON_TYPE(Integer value) {
			this.value = value;
		}
	}
	
	/**
	 * 人员性别，1-男（默认），2-女
	 * Description:
	 * @author: xulihua
	 * @date: 2017年3月24日上午12:22:44
	 * @note
	 */
	public enum ENUM_PERSON_SEX {
		
		/**
		 * 男
		 */
		per_man(1),
		
		/**
		 * 女
		 */
		per_female(2);
		
		public Integer value;
		
		private ENUM_PERSON_SEX(Integer vlaue) {
			this.value = vlaue;
		}
	}
	
	/**
	 * 人员状态，1-正常。2-禁用
	 * Description:
	 * @project:acms-service-core
	 * @author: 徐礼华
	 * @date: 2017年4月14日上午9:12:47
	 * @note:
	 */
	public enum ENUM_PERSON_STATUS {
		/**
		 * 正常
		 */
		per_normal(1),
		
		/**
		 * 禁用
		 */
		per_stop(2);
		
		public Integer value;
		
		private ENUM_PERSON_STATUS(Integer value) {
			this.value = value;
		}
	}
}
