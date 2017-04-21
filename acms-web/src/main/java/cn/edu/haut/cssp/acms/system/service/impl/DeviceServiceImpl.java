package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.device.entity.DeviceInfoBean;
import cn.edu.haut.cssp.acms.device.entity.DeviceQueryBean;
import cn.edu.haut.cssp.acms.system.service.IDeviceService;
@Service
public class DeviceServiceImpl extends BaseServiceImpl implements IDeviceService{

	@Override
	public DeviceInfoBean queryDevice(DeviceQueryBean queryBean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TDeviceInfo> ajaxDeviceList() {
		try{
			List<TDeviceInfo> deviceList = super.getBaseDao().getSqlSession().selectList("DeviceInfoMapper.getUserList", 1);
			return deviceList;
		}catch( Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean timeGroupInstall(Long timeGroupStart, Long timeGroupEnd, Long id) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("timeStart", timeGroupStart);
		map.put("timeEnd", timeGroupEnd);
		int i = super.getBaseDao().getSqlSession().update("DeviceInfoMapper.updateTimeGroup", map);
		return i == 1 ? true : false;
	}
	
	@Override
	public boolean breakConnect(Long id) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		int i = super.getBaseDao().getSqlSession().update("DeviceInfoMapper.breakConnect", map);
		return i == 1 ? true : false;
	}
}
