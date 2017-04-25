package cn.edu.haut.cssp.acms.system.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.bean.DataSyslogExt;
import cn.edu.haut.cssp.acms.core.entity.TSystemLog;
import cn.edu.haut.cssp.acms.log.entity.SystemLog;
import cn.edu.haut.cssp.acms.log.util.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.service.ISystemLogService;


/**
 *  系统日志service实现类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午4:17:06
 * @note
 */
@Service
public class SystemLogServiceImpl extends BaseServiceImpl implements ISystemLogService{

	@Override
	public LitePaging<SystemLog> querySystemLogs(SystemLog condition, Integer pageNo, Integer pageSize, String sortName,
			String sortType, DateQueryBean queryBean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveSystemLog(SystemLog log) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteSystemLog(Long systemLong) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<TSystemLog> querySyslogList(DataSyslogExt dataSyslogExt) {
		Map<String, Object> map = new HashMap<>();
		if(StringUtils.isNotBlank(dataSyslogExt.getStartTime())){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date date = sdf.parse(dataSyslogExt.getStartTime());
				long time1 = date.getTime();
				map.put("startTime", time1);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if(StringUtils.isNotBlank(dataSyslogExt.getEndTime())){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date date = sdf.parse(dataSyslogExt.getStartTime());
				long time2 = date.getTime();
				map.put("endTime", time2);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if(StringUtils.isNotBlank(dataSyslogExt.getKeyWord())){
			map.put("keyWord", dataSyslogExt.getKeyWord());
		}
		if(dataSyslogExt.getLogType() != null && dataSyslogExt.getLogType() > 0){
			map.put("logType", dataSyslogExt.getLogType());
		}
		List<TSystemLog> systemLogList = super.getBaseDao().getSqlSession().selectList("SystemLogMapper.querySyslogList", map);
		return systemLogList;
	}
	
}
