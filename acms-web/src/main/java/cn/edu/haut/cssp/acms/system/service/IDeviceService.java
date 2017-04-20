package cn.edu.haut.cssp.acms.system.service;

import java.util.List;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.device.entity.DeviceInfoBean;
import cn.edu.haut.cssp.acms.device.entity.DeviceKeyInfo;
import cn.edu.haut.cssp.acms.device.entity.DeviceQueryBean;

/**
 * 设备管理服务接口
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午5:05:31
 * @note
 */
public interface IDeviceService {

	/**
	 * 已执行
	 */
	public static final Integer IS_EXECUTE = 1;
	
	/**
	 * 未执行
	 */
	public static final Integer IS_NOT_EXECUTE = 0;
	
	/**
	 * 添加-0
	 */
	public static final Integer OPT_ADD = 0;
	
	/**
	 * 删除 -1
	 */
	public static final Integer OPT_DEL = 1;
	
	/**
	 * 
	 * 方法描述：查询设备基本信息
	 * @param queryBean 查询条件
	 * @return	设备基本信息
	 */
	DeviceInfoBean queryDevice(DeviceQueryBean queryBean);
	
	
	/**
	 * 返回设备列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日上午11:19:09
	 * @return
	 */
	public List<TDeviceInfo> ajaxDeviceList();
	
	/**
	 * 设置门禁时间
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月20日下午8:37:07
	 * @param timeGroupStart
	 * @param timeGroupEnd
	 * @param id
	 * @return
	 */
	public boolean timeGroupInstall(Long timeGroupStart,Long timeGroupEnd, Long id) throws Exception;
	





	
}
