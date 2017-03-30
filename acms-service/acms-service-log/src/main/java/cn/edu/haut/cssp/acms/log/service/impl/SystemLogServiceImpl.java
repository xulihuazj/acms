package cn.edu.haut.cssp.acms.log.service.impl;

import org.springframework.stereotype.Component;

/**
 *  系统日志service实现类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午4:17:06
 * @note
 */
@Component
public class SystemLogServiceImpl {
	/*
	private SystemLogDao systemLogDao;
	
	@Override
	public LitePaging<SystemLog> querySystemLogs(SystemLog condition,Integer pageNo, Integer pageSize, String sortName, String sortType,DateQueryBean queryBean) {
		return PagingConverter.convert(systemLogDao.querySystemLogs(condition, pageNo, pageSize, sortName, sortType, queryBean));
	}

	@Override
	public void saveSystemLog(SystemLog log) {
		if (null != log) {
			//systemLogBusiness.saveSystemLog(log);
		} else {
			throw new IllegalArgumentException("保存日志，数据为空");
		}
		
	}

	@Override
	public void deleteSystemLog(Long systemLong) {
	   if(null != systemLong){
		   systemLogDao.deleteSystemLog(systemLong);
	   }else{
		   throw new RuntimeException("删除日志失败，请稍后重试");
	   }
	}*/
	
}
