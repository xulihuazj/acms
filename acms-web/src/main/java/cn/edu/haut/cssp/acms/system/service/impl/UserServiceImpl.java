package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.exception.UserBusiException;
import cn.edu.haut.cssp.acms.system.service.IUserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl implements IUserService{

	private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	//ok
	@Override
	public TUser findUserById(Long userId){
		try{
			TUser user = super.getBaseDao().getSqlSession().selectOne("UserManageMapper.findUserById", userId);
			return user;
		}catch(Exception e){
			e.printStackTrace();
			logger.error("查询管理员信息失败", e);
		}
		return null;
	}
	
	@Override
	public List<TUser> ajaxUserList() {
		return super.getBaseDao().getSqlSession().selectList("UserManageMapper.ajaxUserList", 1);
	}

	//ok
	@Override
	public TUser getUserByUserName(String userName) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("userName", userName);
		TUser user = super.getBaseDao().getSqlSession().selectOne("UserManageMapper.getUserByUserName", map);
		return user;
	}


	@Override
	public LitePaging<TUser> queryAllUsers(TUser condition, DataQueryExt queryExt, DateQueryBean queryBean)
			throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public TUser selectUserByNameAndPass(Map<String, String> map) {
		TUser user = super.getBaseDao().getSqlSession().selectOne("UserManageMapper", map);
		return user;
	}

	//ok
	@Override
	public Integer saveUser(TUser user, Long[] roleId) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("userName","zhangjun");
		map.put("password", "22222");
		map.put("type",1);
		map.put("status", 1);
		map.put("time",43242342 );
		map.put("note", "fsfljfalse");
		map.put("ecCode",1);
		int i = super.getBaseDao().getSqlSession().insert("UserManageMapper.saveUser", user);
		return i;
	}

	//ok
	@Override
	public void updateUser(TUser user) throws UserBusiException {
		super.getBaseDao().getSqlSession().update("UserManageMapper.updateUser", user);
	}
	//ok
	//真删除
	@Override
	public Integer deleteUserById(Long userId) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("id", userId);
		int i = super.getBaseDao().getSqlSession().delete("UserManageMapper.deleteUserById", map);
		return i;
	}

	
	@Override
	public Integer resetPassword(Long userId, String newPwd) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("password", newPwd);
		int i = super.getBaseDao().getSqlSession().update("UserManageMapper.resetPassword",map);
		return i;
	}

	//ok
	@Override
	public Integer startUser(Long userId) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("status", TUser.ENUM_USER_STATUS.normalStatus.value);
		int i = super.getBaseDao().getSqlSession().update("UserManageMapper.updateStatus", map);
		return i;
	}

	//ok
	@Override
	public Integer suspendUser(Long userId) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("status", TUser.ENUM_USER_STATUS.stopStatus.value);
		int i = super.getBaseDao().getSqlSession().update("UserManageMapper.updateStatus", map);
		return i;
	}

	//ok
	@Override
	public boolean isNameExist(String userName) throws UserBusiException {
		Map<String, Object> map = new HashMap<>();
		map.put("userName", userName);
		TUser user = super.getBaseDao().getSqlSession().selectOne("UserManageMapper.getUserByUserName", map);
		return user == null ? false : true;
		/*Map resultMap = super.getBaseDao().getSqlSession().selectOne("UserManageMapper.getUserByUserName2", map);
		return false;*/
	}

	
}
