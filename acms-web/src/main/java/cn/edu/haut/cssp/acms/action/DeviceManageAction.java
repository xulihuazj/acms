package cn.edu.haut.cssp.acms.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.entity.User;
import cn.edu.haut.cssp.acms.system.service.IDeviceService;

/**
 * 设备管理
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月17日上午11:08:01
 * @note:
 */
@Controller
public class DeviceManageAction {

	@Autowired
	private IDeviceService deviceService;
	
	/**
	 * 获取设备信息列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午2:24:54
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/device/ajaxDeviceList.do")
	public Object ajaxPersonList(ModelMap modelMap,HttpSession session){
		List<TDeviceInfo> deviceList = deviceService.ajaxDeviceList();
		modelMap.put("deviceList", deviceList);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-device.jsp";
	}
	
	/**
	 * 时间组设置
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午2:25:25
	 * @return
	 */
	@RequestMapping("/device/timeGroup.do")
	public Object timeGroup(ModelMap modelMap,HttpSession session){
		List<TDeviceInfo> deviceList = deviceService.ajaxDeviceList();
		modelMap.put("deviceList", deviceList);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-device-time.jsp";
	}
	
}
