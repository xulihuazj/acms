package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.entity.TDeviceLog;
import cn.edu.haut.cssp.acms.system.service.IDeviceLogService;

@Service
public class DeviceLogServiceImpl extends BaseServiceImpl implements IDeviceLogService{

	@Override
	public List<TDeviceLog> ajaxTrunLogAction() {
		List<TDeviceLog> deviceLogs = super.getBaseDao().getSqlSession().selectList("DeviceLogMapper.ajaxTrunLogAction",1);
		return deviceLogs;
	}

	@Override
	public boolean insertLog(TDeviceLog deviceLog) {
		int i = super.getBaseDao().getSqlSession().insert("DeviceLogMapper.insertLog", deviceLog);
		return i > 0 ? true:false;
	}

	@Override
	public List<TDeviceLog> queryListByCardsn(String cardsn) {
		 List<TDeviceLog> list = super.getBaseDao().getSqlSession().selectList("DeviceLogMapper.queryListByCardsn", cardsn);
		 return list;
	}
	
}
