package cn.edu.haut.cssp.acms.system.service;

import java.util.List;
import java.util.Map;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TRole;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;

/**
 * 角色管理服务接口类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午3:39:34
 * @note
 */
public interface IRoleService {
	
	
	public List<TRole> ajaxRoleList();

	/**
	 * 保存、修改角色信息
	 * @Description：
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:39:34
	 * @param role 角色实体
	 * @param funcIds 功能菜单ID集合，以逗号隔开，如1,2,3
	 */				
	void saveRole(TRole role, Long funcIds);
	
	/**
	 * 根据角色id删除角色及角色-用户关联、角色-功能关联信息
	 * @Description：
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:39:34
	 * @param roleId
	 * @return 返回true,删除成功；返回false,已经有用户绑定此角色，删除失败
	 */
	Boolean deleteRoleById(Long roleId);
	
	/**
	 * 
	 * @Description：分页查询角色列表
	  * @author: xulihua
	  * @date: 2017年1月18日下午3:39:34
	 * @param roleCondition
	 * @return
	 */
	LitePaging<TRole> queryAllRoles(TRole roleCondition, DataQueryExt queryExt, DateQueryBean queryBean);

	/**
	 * 查询所有的普通功能列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:55:30
	 * @param roleId
	 * @return
	 */
	List<Map<String,Object>> queryAllFunctions(Long roleId);
	
	/**
	 * 根据角色id查询角色
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:55:40
	 * @param roleId
	 * @return
	 */
	TRole getRoleById(Long roleId);

	/**
	 * 查询角色列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:55:48
	 * @return
	 */
	List<TRole> queryListRoles();
	
	/**
	 * 查找所有的角色（根据userId判断是否拥有相应角色）
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:55:55
	 * @param userId
	 * @return
	 */
	List<TRole> queryListRolesOrCheck(Long userId);

	/**
	 * 校验角色名是否重复；如果是修改角色，需要排除本条角色信息进行校验
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:56:06
	 * @param roleId
	 * @param roleName
	 * @return
	 */
	Boolean isRoleNameExist(Long roleId, String roleName);
}

