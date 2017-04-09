package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TRole;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.service.IRoleService;

/**
 * 角色管理实现类
 * Description:
 * @project:acms-service-system
 * @author: 徐礼华
 * @date: 2017年3月30日上午12:01:08
 * @note:
 */

@Component
public class RoleServiceImpl implements IRoleService{

	@Override
	public void saveRole(TRole role, Long funcIds) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Boolean deleteRoleById(Long roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LitePaging<TRole> queryAllRoles(TRole roleCondition, DataQueryExt queryExt, DateQueryBean queryBean) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> queryAllFunctions(Long roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TRole getRoleById(Long roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TRole> queryListRoles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TRole> queryListRolesOrCheck(Long userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean isRoleNameExist(Long roleId, String roleName) {
		// TODO Auto-generated method stub
		return null;
	}

}
