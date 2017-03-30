package cn.edu.haut.cssp.acms.core.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cn.edu.haut.cssp.acms.core.dao.IBaseDao;

/**
 * 基类实现类
 * Description:
 * @project:acms-service-core
 * @author: xulihua
 * @date: 2017年3月25日下午3:00:35
 * @note:
 */
public class BaseDaoImpl implements IBaseDao {
	
	//向数据库操作的对象
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/**
	 * 根据Id获取对象
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param id
	 *            主键
	 * @return Object对象
	 */
	@Override
	public Object queryForObject(String sqlId, int id) {
		return getSqlSession().selectOne(sqlId, id);
	}
	
	/**
	 * 根据Id获取对象
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param id
	 *            主键
	 * @return Object对象
	 */
	@Override
	public Object queryForObject(String sqlId, Long id) {
		return getSqlSession().selectOne(sqlId, id);
	}
	

	/**
	 * 根据Id获取对象
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param id
	 *            主键
	 * @param cls
	 *            返回的对象Class
	 * @return cls对应的类
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T queryForObject(String sqlId, int id, Class<T> cls) {
		return (T) getSqlSession().selectOne(sqlId, id);
	}

	/**
	 * 根据条件获取对象
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @return
	 */
	@Override
	public Object queryForObject(String sqlId, Map<String, String> params) {
		return getSqlSession().selectOne(sqlId, params);
	}

	/**
	 * 根据条件获取对象
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @param cls
	 *            返回的对象Class
	 * @return cls对应的类
	 */
	@Override
	@SuppressWarnings("unchecked")
	public <T> T queryForObject(String sqlId, Map<String, String> params,
			Class<T> cls) {
		return (T) getSqlSession().selectOne(sqlId, params);
	}

	/**
	 * 获取数据总条数
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @return 条数
	 */
	@Override
	public int getTotalCount(String sqlId, Map<String, String> params) {
		return (Integer) getSqlSession().selectOne(sqlId, params);
	}

	/**
	 * 查询列表
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @param cls
	 *            返回的对象Class
	 * @return 列表<cls对应的类>
	 */
	@Override
	public <T> List<T> queryForList(String sqlId, Map<String, String> params,
			Class<T> cls) {
		return getSqlSession().selectList(sqlId, params);
	}

	/**
	 * 查询列表
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @return 列表
	 */
	@Override
	public List<Map<String, String>> queryForList(String sqlId,
			Map<String, String> param) {
		List<Map<String, Object>> list = getSqlSession().selectList(sqlId, param);
		//List<Map<String, String>> beans = ConvertUtil.convertSqlMap2JavaMap(list);
		List<Map<String, String>> beans = null;
		return beans;
	}

	/**
	 * 修改数据
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param object
	 *            对象
	 * @return 修改的行数
	 */
	@Override
	public int update(String sqlId, Object object) {
		return getSqlSession().update(sqlId, object);
	}

	/**
	 * 插入数据
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param object
	 *            待插入的对象
	 * @return 插入条数 
	 */
	@Override
	public int insert(String sqlId, Object object) {
		return getSqlSession().insert(sqlId, object);
	}

	/**
	 * 删除数据
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param id
	 *            主键
	 * @return 主键
	 */
	@Override
	public int delete(String sqlId, int id) {
		return getSqlSession().delete(sqlId, id);
	}
	
	/**
	 * 删除数据
	 * 
	 * @param sqlId
	 *            脚本编号
	 * @param map
	 *            待删除的对象
	 * @return 主键
	 */
	@Override
	public int delete(String sqlId, Map<String, String> map) {
		return getSqlSession().delete(sqlId, map);
	}
	
	
	
	/**
	 * 
	 */
	@Override
	public List<Map<String, String>> queryForListByObject(String sqlId, Map<String, Object> param) {
		List<Map<String, Object>> list = getSqlSession().selectList(sqlId, param);
		//List<Map<String, String>> beans = ConvertUtil.convertSqlMap2JavaMap(list);
		return null;
	}
}
