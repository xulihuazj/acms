package cn.edu.haut.cssp.acms.core.utils;

import java.io.Serializable;

import org.apache.commons.lang3.StringUtils;


/**
 * 时间查询包装类
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:17:01
 * @note:
 */
public class DateQueryBean implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 开始时间字符串
	 */
	private String startTime;
	/**
	 * 结束时间字符串
	 */
	private String endTime;

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	/**
	 * 获取开始时间
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:16:05
	 * @return
	 */
	public Long getStart() {
		if (StringUtils.isNotBlank(startTime)) {
			return DateTimeUtil.getStartTime(startTime);
		}
		return null;
	}

	/**
	 * 获取结束时间
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:16:40
	 * @return
	 */
	public Long getEnd() {
		if (StringUtils.isNotBlank(endTime)) {
			return DateTimeUtil.getEndTime(endTime);
		}
		return null;
	}
}
