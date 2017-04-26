package cn.edu.haut.cssp.acms.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.haut.cssp.acms.core.bean.DataSyslogExt;
import cn.edu.haut.cssp.acms.core.entity.TSystemLog;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.core.utils.LitePaging;
import cn.edu.haut.cssp.acms.log.entity.SystemLog;
import cn.edu.haut.cssp.acms.log.util.DateTimeUtil;
import cn.edu.haut.cssp.acms.system.service.ISystemLogService;


/**
 * 系统日志处理Action
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午1:41:10
 */
@Controller
public class SystemLogAction extends BaseAction{
	
	@Autowired
	private ISystemLogService systemLogService;

	/**
	 * 跳转到日志页面
	 * @author: xulihua
	 * @date: 2017年1月9日下午2:46:21
	 * @return: String
	 */
	@RequestMapping("/system/syslog/toList.do")
	public String toList(HttpSession session, ModelMap modelMap){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-log.jsp";
	}
	
	/**
	 * 根据条件查询日志列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月19日上午12:02:09
	 * @return
	 */
	@RequestMapping("/system/syslog/querySyslogList.do")
	public String querySyslogList(DataSyslogExt dataSyslogExt,ModelMap modelMap, HttpSession session){
		List<TSystemLog> logList = systemLogService.querySyslogList(dataSyslogExt);
		List<DataSyslogExt> syslogList = new ArrayList<>();
		Iterator<TSystemLog> iteratorList = logList.iterator();
		while (iteratorList.hasNext()) {
			DataSyslogExt syslogExt = new DataSyslogExt();
			TSystemLog next = iteratorList.next();
			syslogExt.setLogUploadTime(DateTimeUtil.dateToStr(new Date(next.getLogUploadTime())));
			syslogExt.setId(next.getId());
			syslogExt.setLogType(next.getLogType());
			syslogExt.setUserName(next.getUserName());
			syslogExt.setLogContent(next.getLogContent());
			syslogList.add(syslogExt);
		}
		modelMap.put("syslogList", syslogList);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-log.jsp";
	}
	/**
	 * 系统日志列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:22:38
	 * @param keyWord
	 * @param queryBean
	 * @param pageCondition
	 * @return
	 */
	@RequestMapping("/system/syslog/ajaxList.do")
	public Object ajaxList(String keyWord, DateQueryBean queryBean, LitePaging<SystemLog> pageCondition){
		
		return "";
	}
	
	/**
	 * 查看日志详情
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:21:58
	 * @param logId 日志表主键
	 * @return
	 */
	@RequestMapping("/system/syslog/queryDetail.do")
	public Object queryDetail(Long logId) {
		
		return null;
	}
}
