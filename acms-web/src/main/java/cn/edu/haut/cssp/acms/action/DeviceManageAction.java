package cn.edu.haut.cssp.acms.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.entity.User;
import cn.edu.haut.cssp.acms.core.utils.DateTimeUtil;
import cn.edu.haut.cssp.acms.core.utils.DateUtil;
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
public class DeviceManageAction extends BaseAction{
	
	private Logger logger = LoggerFactory.getLogger(DeviceManageAction.class);

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
		for(TDeviceInfo deviceInfo : deviceList){
			String activateTime = deviceInfo.getActivateTime().toString();
		}
		modelMap.put("deviceList", deviceList);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		System.out.println(System.currentTimeMillis());
		return "/page-device-time.jsp";
	}
	
	@RequestMapping("/device/timeGroupInstall.do")
	@ResponseBody
	public Object timeGroupInstall(Long timeGroupStart,Long timeGroupEnd, Long id) {
		Map<String, Object> message = new HashMap<>();
		try{
			deviceService.timeGroupInstall(timeGroupStart, timeGroupEnd,  id);
			message.put("message", SUCCESS);
		}catch(Exception e){
			message.put("message", "设置门禁时间失败");
			logger.error(e.getMessage());
		}
		return message;
	}
	
	/**
	 * 断开设备连接
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月21日下午12:57:17
	 * @param deviceId
	 * @return
	 */
	@RequestMapping(value = "/device/breakConnect.do",method = RequestMethod.POST)
	@ResponseBody
	public Object breakConnect(Long deviceId) {
		Map<String, Object> message = new HashMap<>();
		try{
			deviceService.breakConnect(deviceId);
			message.put("message", SUCCESS);
		}catch(Exception e){
			message.put("message", "断开设备连接失败");
			logger.error(e.getMessage());
		}
		return message;
	}
	
	/**
	 * 建立连接
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月21日下午12:56:41
	 * @param deviceId
	 * @return
	 */
	@RequestMapping("/device/estConnect.do")
	@ResponseBody
	public Object estConnect(Long deviceId) {
		Map<String, Object> message = new HashMap<>();
		try{
			deviceService.breakConnect(deviceId);
			message.put("message", SUCCESS);
		}catch(Exception e){
			message.put("message", "断开设备连接失败");
			logger.error(e.getMessage());
		}
		return message;
	}
	
	/**
	 * 停用设备
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月21日下午12:57:05
	 * @param deviceId
	 * @return
	 */
	@RequestMapping("/device/stopDevice.do")
	@ResponseBody
	public Object ecstConnect(Long deviceId) {
		Map<String, Object> message = new HashMap<>();
		try{
			deviceService.breakConnect(deviceId);
			message.put("message", SUCCESS);
		}catch(Exception e){
			message.put("message", "断开设备连接失败");
			logger.error(e.getMessage());
		}
		return message;
	}
	
}
