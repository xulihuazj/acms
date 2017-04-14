package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.Date;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.dao.impl.BaseDaoImpl;
import cn.edu.haut.cssp.acms.core.utils.DateUtil;
import cn.edu.haut.cssp.acms.core.utils.DateUtil.DATE_PATTERN;
import cn.edu.haut.cssp.acms.core.utils.UUIDUtils;

/**
 * service实现基类
 * Description:
 * @project:acms-service-system
 * @author: xulihua
 * @date: 2017年3月26日下午12:54:26
 * @note:
 */
@Component
public class BaseServiceImpl {

	private Logger logger = LoggerFactory.getLogger(BaseServiceImpl.class);
	
	// 用户中心操作的dao
	@Autowired
	private BaseDaoImpl baseDao;
	
	
	public BaseDaoImpl getBaseDao() {
		return baseDao;
	}


	public void setBaseDao(BaseDaoImpl baseDao) {
		this.baseDao = baseDao;
	}


	/**
	 * 主键生成策略
	 * 
	 * @param tableName
	 *            需要获取主键的表名
	 */
	public String getSequence(String tableName) throws Exception {
		if (StringUtils.isEmpty(tableName)) {
			throw new Exception("获取主键时前缀不能为空!建议传入表名");
		}
		String redisKey = "REDIS_TBL_" + tableName;
		String id = null;
		try {
			logger.info("开始获取主键 ", "key=" + redisKey);
			id = DateUtil.date2String(new Date(),
					DATE_PATTERN.YYYYMMDDHHMMSSSSS);
			logger.info("获取主键成功", "id=" + id);
		} catch (Exception e) {
			logger.error("使用redis获取主键失败，开始使用UUID", "key=" + redisKey, e);
			id = UUIDUtils.getUUID().toString();
			logger.error("NOT ERROR! 主键获取成功", "key=" + redisKey + ",id=" + id);
		}
		return id;
	}
}
