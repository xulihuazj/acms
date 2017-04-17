package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.List;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.device.entity.DeviceInfoBean;
import cn.edu.haut.cssp.acms.device.entity.DeviceQueryBean;
import cn.edu.haut.cssp.acms.system.service.IDeviceService;

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

}
