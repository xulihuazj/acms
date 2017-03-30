package cn.edu.haut.cssp.acms.system.service;

import java.util.Map;

import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.entity.Menu;
import cn.edu.haut.cssp.acms.system.exception.UserBusiException;

/**
 * 菜单权限服务接口类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:47:59
 * @note
 */
public interface IFunctionService {

	/**
	 * 查询用户拥有的所有菜单信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月30日上午12:00:27
	 * @param user
	 * @return
	 */
	Map<String, Menu> queryAllFunctions(TUser user);
	
	
}
