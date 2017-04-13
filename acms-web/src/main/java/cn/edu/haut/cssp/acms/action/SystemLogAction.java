package cn.edu.haut.cssp.acms.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.core.utils.LitePaging;
import cn.edu.haut.cssp.acms.log.entity.SystemLog;


/**
 * 系统日志处理Action
 * Description:
 * @author: xulihua
 * @date: 2017年1月5日下午1:41:10
 */
@Controller
public class SystemLogAction extends BaseAction{

	/**
	 * 跳转到日志页面
	 * @author: xulihua
	 * @date: 2017年1月9日下午2:46:21
	 * @return: String
	 */
	@RequestMapping("/system/syslog/toList.do")
	public String toList(){
		return "system/syslog";
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
