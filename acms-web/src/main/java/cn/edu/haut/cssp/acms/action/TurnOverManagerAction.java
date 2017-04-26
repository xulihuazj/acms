package cn.edu.haut.cssp.acms.action;
import static org.mockito.Mockito.never;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.haut.cssp.acms.core.bean.DeviceLogExt;
import cn.edu.haut.cssp.acms.core.entity.TDeviceLog;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateTimeUtil;
import cn.edu.haut.cssp.acms.system.service.IDeviceLogService;
import cn.edu.haut.cssp.acms.system.service.IPersonService;

/**
 * 门禁出入日志Actions
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月26日下午1:30:20
 * @note:
 */
@Controller
public class TurnOverManagerAction extends BaseAction{

	@Autowired
	private IDeviceLogService devicelogService;
	
	@Autowired
	private IPersonService personService;
	
	/**
	 * 获取门禁分页列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月26日下午2:27:14
	 * @param session
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/turnover/ajaxTurnoverList.do")
	public String ajaxTurnLogAction(HttpSession session, ModelMap modelMap){
		TUser currUser = (TUser) session.getAttribute("currUser");
		try{
		List<TDeviceLog> deviceLogs = devicelogService.ajaxTrunLogAction();
		List<DeviceLogExt> deviceLogExts = new ArrayList<>();
		Iterator<TDeviceLog> iteratorList = deviceLogs.iterator();
		while (iteratorList.hasNext()) {
			TDeviceLog next = iteratorList.next();
			DeviceLogExt deviceLogExt = new DeviceLogExt();
			deviceLogExt.setId(next.getId());
			deviceLogExt.setCardSN(next.getCardSN());
			deviceLogExt.setDeviceSite(next.getDeviceSite());
			deviceLogExt.setContent(next.getContent());
			deviceLogExt.setTurnTime(DateTimeUtil.dateToStr(new Date(next.getTurnTime())));
			deviceLogExts.add(deviceLogExt);
		}
		modelMap.put("deviceLogs", deviceLogExts);
		modelMap.put("userName", currUser.getUserName());
		return "/page-turnover.jsp";
		}
		catch (Exception e) {
			e.printStackTrace();
			return "/page-turnover.jsp";
		}
	}
	
	/**
	 * 判断是否可以进入
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月26日下午2:51:11
	 * @return
	 */
	@RequestMapping(value = "/whethertorenter.do", method=RequestMethod.GET)
	public String whethertorenter(String cardsn) {
		TPerson person = personService.selectPersonNote(cardsn);
		if(null != person){
			List<TDeviceLog> deviceLogs = devicelogService.queryListByCardsn(cardsn);
			TDeviceLog device = deviceLogs.get(deviceLogs.size() - 1);
			if(device.getTurnType() == 1){ //已进入
				TDeviceLog deviceLog = new TDeviceLog();
				deviceLog.setCardSN(cardsn);
				deviceLog.setDeviceSite("电气工程学院");
				deviceLog.setContent("【"+ person.getPerName() +"】离开学院");
				deviceLog.setTurnTime(System.currentTimeMillis());
				deviceLog.setTurnType(0);
				devicelogService.insertLog(deviceLog);
			}else{ // 未进入
				TDeviceLog deviceLog = new TDeviceLog();
				deviceLog.setCardSN(cardsn);
				deviceLog.setDeviceSite("电气工程学院");
				deviceLog.setContent("【"+ person.getPerName() +"】进入学院");
				deviceLog.setTurnTime(System.currentTimeMillis());
				deviceLog.setTurnType(1);
				devicelogService.insertLog(deviceLog);
			}
			return "a";
		}else{
			return "b";
		}
		
	}
	
	@RequestMapping("/turnover/queryDormAList.do")
	public String queryDormAList(ModelMap modelMap, HttpSession session) {
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-turnover-dorm.jsp";
	}
	
}
