package cn.edu.haut.cssp.acms.system.service;

import java.util.List;

import cn.edu.haut.cssp.acms.core.entity.TDeviceLog;

/**
 * 设备日志接口
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月26日下午1:51:09
 * @note:
 */
public interface IDeviceLogService {

	/**
	 * 
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月26日下午1:54:54
	 * @return
	 */
	public List<TDeviceLog> ajaxTrunLogAction();
	
	public boolean insertLog(TDeviceLog deviceLog);
	
	public List<TDeviceLog> queryListByCardsn(String cardsn);
}
