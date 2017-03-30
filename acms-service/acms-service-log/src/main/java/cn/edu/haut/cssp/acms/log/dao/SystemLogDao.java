package cn.edu.haut.cssp.acms.log.dao;


/**
 * 系统日志数据层
 * Project Name：pms-service-oms-log ClassName：SystemLogDao Description：
 * @author 马德成
 * @date 2015-10-21
 * 
 */
public class SystemLogDao {

	/**
	 * 修改表名
	 * @author: xulihua
	 * @date: 2017年3月11日下午2:55:36
	 * @return: Pagination<SystemLog>
	 */
/*	public Pagination<SystemLog> querySystemLogs(SystemLog syslog,
			Integer pageNo, Integer pageSize, String sortName, String sortType,
			DateQueryBean queryBean) {

		StringBuilder sqlBuilder = new StringBuilder(
				"SELECT log.n_id as id ,log.n_type as logType, ")
				.append("log.n_time  as logTime ,user.c_name as userName , log.c_content as logContent FROM t_log ")
				.append("log  LEFT JOIN  t_user user  ON  log.n_user_id = user.n_id  where 1=1 ");

		MapSqlParameterSource sqlParameterSource = new MapSqlParameterSource();

		if (null != syslog) {
			if (null != syslog.getLogType()) {
				sqlBuilder.append("AND  log.n_type = :type ");
				sqlParameterSource.addValue("type", syslog.getLogType());
			}
			if (null != syslog.getModelType()) {
				sqlBuilder.append("AND log.n_model_type = :modelType ");
				sqlParameterSource.addValue("modelType", syslog.getModelType());
			}
		}

		if (null != queryBean) {
			if (null != queryBean.getStart()) {
				sqlBuilder.append("AND log.n_time >= :startTime ");
				sqlParameterSource.addValue("startTime", queryBean.getStart());

				System.out.println(queryBean.getStart());
			}
			if (null != queryBean.getEnd()) {
				sqlBuilder.append("AND log.n_time <= :endTime ");
				sqlParameterSource.addValue("endTime", queryBean.getEnd());
			}
		}
		if (StringUtils.isNotEmpty(sortName) && StringUtils.isNotEmpty(sortType) ) {
			sqlBuilder.append("ORDER BY " + sortName + " " + sortType);
		} else {
			sqlBuilder.append("ORDER BY log.n_time DESC ");
		}
		return this.queryForPage(sqlBuilder.toString(), pageSize, pageNo,
				sqlParameterSource,
				BeanPropertyRowMapper.newInstance(SystemLog.class));
	}*/
}
