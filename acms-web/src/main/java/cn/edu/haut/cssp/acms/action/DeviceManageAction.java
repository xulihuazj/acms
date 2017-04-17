package cn.edu.haut.cssp.acms.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.system.service.IDeviceService;

/**
 * 设备管理
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月17日上午11:08:01
 * @note:
 */
public class DeviceManageAction {

	@Autowired
	private IDeviceService deviceService;
	
	@RequestMapping("/person/ajaxDeviceList.do")
	public Object ajaxPersonList(ModelMap modelMap){
		List<TDeviceInfo> deviceList = deviceService.ajaxDeviceList();
		modelMap.put("deviceList", deviceList);
		return "/page-deivce.jsp";
	}
	
}
