package cn.edu.haut.cssp.acms.action;

import java.util.ArrayList;
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

import cn.edu.haut.cssp.acms.core.bean.DeviceTimeExt;
import cn.edu.haut.cssp.acms.core.entity.TDeviceInfo;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.entity.User;
import cn.edu.haut.cssp.acms.core.utils.DateTimeUtil;
import cn.edu.haut.cssp.acms.core.utils.DateUtil;
import cn.edu.haut.cssp.acms.system.service.IDeviceService;
import cn.edu.haut.cssp.acms.system.service.IPersonService;

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
	
	@Autowired
	private IPersonService personService;
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
		List<DeviceTimeExt> deviceTimeExts = new ArrayList<>();
		for(TDeviceInfo deviceInfo : deviceList){
			DeviceTimeExt deviceExt = new DeviceTimeExt();
			deviceExt.setId(deviceInfo.getId());
			String activateTime = DateTimeUtil.dateToStr(new Date(deviceInfo.getActivateTime()));
			deviceExt.setActivateTime(activateTime);
			if(deviceInfo.getAbateTime() != null){
			String abateTime = DateTimeUtil.dateToStr(new Date(deviceInfo.getAbateTime()));
				deviceExt.setAbateTime(abateTime);
			}
			if(deviceInfo.getTimeStart() != null){
			String timeStart = DateTimeUtil.dateToStr(new Date(deviceInfo.getTimeStart()));
				deviceExt.setTimeStart(timeStart);
			}
			if(deviceInfo.getTimeEnd() != null){
			String timeEnd = DateTimeUtil.dateToStr(new Date(deviceInfo.getTimeEnd()));
				deviceExt.setTimeEnd(timeEnd);
			}
			deviceExt.setStatus(deviceInfo.getStatus());
			deviceTimeExts.add(deviceExt);
		}
		modelMap.put("deviceTimeExts", deviceTimeExts);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-device-time.jsp";
	}
	
	/**
	 * 设置门禁开启结束时间
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月25日下午11:45:05
	 * @param timeGroupStart
	 * @param timeGroupEnd
	 * @param id
	 * @return
	 */
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
	
	@RequestMapping(value = "/device/timeGroupInstall2.do", method=RequestMethod.GET)
	public String timeGroupInstall2(String guardTimeStart,String guardEndStart, Long id) {
		Map<String, Object> message = new HashMap<>();
		try{
			String newTimeStart = guardTimeStart.replace(" ", "-").replace("---", " ")+":00";
			String newTimeEnd = guardEndStart.replace(" ", "-").replace("---", " ")+":00";
			long time1 = DateTimeUtil.dateTimeStrToLong(newTimeStart);
			long time2 = DateTimeUtil.dateTimeStrToLong(newTimeEnd);
			boolean flag = deviceService.timeGroupInstall(time1, time2, id);
			message.put("message", SUCCESS);
		}catch(Exception e){
			message.put("message", "设置门禁时间失败");
			logger.error(e.getMessage());
		}
		return "redirect:/device/timeGroup.do";
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
	
	
	
	@RequestMapping(value = "/device/queryPersonNote.do",method = RequestMethod.GET)
	@ResponseBody
	public Object queryPersonNote(String cardSN){
		Map<String, Object> data =new HashMap<>();
		try{
			TPerson person = personService.selectPersonNote(cardSN);
			data.put("success", 1);
			//data.put("id", person.getId());
			//data.put("perName", person.getPerName());
		}catch(Exception e){
			data.put("success", 0);//失败
		}
		return data;
	}
	
	@RequestMapping("/result")
	@ResponseBody
	public Object result(){
		Map<String, Object> map = new HashMap<>();
		map.put("success", 1);
		return map;
	}
}
