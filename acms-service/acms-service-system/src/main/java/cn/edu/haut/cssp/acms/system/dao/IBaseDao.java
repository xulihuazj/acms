package cn.edu.haut.cssp.acms.system.dao;

import java.util.List;
import java.util.Map;

/**
 * 数据处理层基类
 * Description:
 * @project:acms-service-core
 * @author: xulihua
 * @date: 2017年3月25日下午2:41:17
 * @note:
 */
public interface IBaseDao {

	/**
	 * 根据ID获取对象
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:44:28
	 * @param sqlId 脚本编号
	 * @param id 主键
	 * @return Objecet对象
	 */
	public Object queryForObject(String sqlId, int id);
	
	/**
	 * 根据ID获取对象
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:44:28
	 * @param sqlId 脚本编号
	 * @param id 主键
	 * @return Objecet对象
	 */
	public Object queryForObject(String sqlId, Long id);
	
	/**
	 * 根据Id获取对象
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:47:33
	 * @param sqlId 
	 * 				脚本编号
	 * @param id 
	 * 				主键
	 * @param cls 
	 * 				返回的对象的类
	 * @return cls 
	 * 				对应的类
	 */
	public <T> T queryForObject(String sqlId, int id, Class<T> cls);
	
	/**
	 * 根据条件获取对象
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:50:45
	 * @param sqlId 
	 * 				脚本编号
	 * @param param 
	 * 				参数
	 * @return
	 */
	public Object queryForObject(String sqlId, Map<String, String > params);
	
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
	public <T> T queryForObject(String sqlId, Map<String, String> params,
			Class<T> cls);
	
	/**
	 * 获取数据总条数
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:53:32
	 * @param sqlId
	 * 				脚本编号
	 * @param params
	 * 				参数
	 * @return	
	 * 			条数
	 */
	public int getTotalCount(String sqlId, Map<String, String> params);
	
	/**
	 * 查询列表
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03	 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @param cls
	 *            返回的对象Class
	 * @return 
	 * 			列表<cls对应的类>
	 */
	public <T> List<T> queryForList(String sqlId, Map<String, String> params, Class<T> cls);
	
	/**
	 * 查询列表
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03	 
	 * @param sqlId
	 *            脚本编号
	 * @param params
	 *            参数
	 * @return 
	 * 			列表
	 */
	public List<Map<String, String>> queryForList(String sqlId,
			Map<String, String> param);
	
	/**
	 * 修改数据
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03	 
	 * @param sqlId
	 *            脚本编号
	 * @param object
	 *            对象
	 * @return 
	 * 			修改的行数
	 */
	public int update(String sqlId, Object object);
	
	/**
	 * 插入数据
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03
	 * @param sqlId
	 *            脚本编号
	 * @param object
	 *            待插入的对象
	 * @return 主键
	 */
	public int insert(String sqlId, Object object);
	
	/**
	 * 删除数据
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03
	 * @param sqlId
	 *            脚本编号
	 * @param id
	 *            主键
	 * @return 主键
	 */
	public int delete(String sqlId, int id);

	/**
	 * 删除数据
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:56:03
	 * @param sqlId
	 *            脚本编号
	 * @param map
	 *            待删除的对象
	 * @return 主键
	 */
	public int delete(String sqlId, Map<String, String> map);
	
	/**
	 * 获取列表数据
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日下午2:58:29
	 * @param sqlId 
	 * 				脚本编号
	 * @param param 
	 * 				参数
	 * @return 
	 * 			列表
	 */
	public List<Map<String, String>> queryForListByObject(String sqlId, Map<String, Object> param);
	
}
