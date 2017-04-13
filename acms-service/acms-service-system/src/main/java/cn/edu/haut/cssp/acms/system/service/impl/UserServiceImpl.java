package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.exception.UserBusiException;
import cn.edu.haut.cssp.acms.system.service.IUserService;

@Component
public class UserServiceImpl extends BaseServiceImpl implements IUserService{

	private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

	@Override
	public TUser getUserByUserName(String userName) throws UserBusiException{
		Map<String, String> map = new HashMap<>();
		Map<String, Object> resultMap;
		map.put("userName", userName);
		resultMap = (Map<String, Object>) super.getBaseDao().queryForObject("UserManageMapper.getUserByUserName", map);
		return (TUser) resultMap;
	}

	@Override
	public LitePaging<TUser> queryAllUsers(TUser condition,DataQueryExt queryExt, DateQueryBean queryBean) throws UserBusiException{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer saveUser(TUser user, Long[] roleId) throws UserBusiException{
		// TODO Auto-generated method stub
		int tokenId = super.getBaseDao().insert("UserManageMapper.saveUser", user);
		return tokenId;
	}

	@Override
	public void updateUser(TUser user) throws UserBusiException{
		 Map<String, String> map = new HashMap<>();
	        map.put("rtnCd", "0");
	        map.put("rtnMsg", "success");
	        try{
	            super.getBaseDao().update("UserManageMapper.updateUserById",user);
	        }catch(Exception e){
	            e.printStackTrace();
	            map.put("rtnCd", "-9999");
	            map.put("rtnMsg", "系统异常");
	        }
	}

	@Override
	public TUser findUserById(Long userId) throws UserBusiException{
		TUser user = (TUser) super.getBaseDao().queryForObject("UserManagementMapper.findUserById", userId);
		return user;
	}

	@Override
	public Integer deleteUserById(Long userId) throws UserBusiException{
		Map<String, Long> map = new HashMap<>();
		map.put("id", userId);
		int tokeId = super.getBaseDao().update("UserManageMapper.deleteUserById", map);
		return tokeId;
	}

	// 重置密码
	@Override
	public Integer resetPassword(Long userId) throws UserBusiException{
		Map<String, Long> map = new HashMap<>();
		map.put("id", userId);
		int tokenId = super.getBaseDao().update("UserManageMapper.resetPassword", map);
		return tokenId;
	}
	
	//开启用户
	@Override
	public Integer startUser(Long userId) throws UserBusiException{
		Map<String, Long> map = new HashMap<>();
		map.put("id", userId);
		int tokenId = super.getBaseDao().update("UserManageMapper.startUser", map);
		return tokenId;
	}
	
	//暂停用户
	@Override
	public Integer suspendUser(Long userId) throws UserBusiException{
		Map<String, Long> map = new HashMap<>();
		map.put("id", userId);
		int tokenId = super.getBaseDao().update("UserManageMapper.suspendUser", map);
		return tokenId;
		
	}

	// 检测用户名是否可用
	@Override
	public boolean isNameExist(String userName) throws UserBusiException{
		Map<String, String> map = new HashMap<>();
		map.put("uesrName", userName);
		try{
			Object object2 = super.getBaseDao().queryForObject("UserManagementMapper.getUserById", 2);
			System.out.println(object2);
			Map<String, Long> object = (Map<String, Long>) super.getBaseDao().queryForObject("UserManagementMapper.checkNameIsExist", map);
			return object.get("id")>0 ? true : false;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	//查询用户信息
	@Override
	public TUser selectUserByNameAndPass(Map<String, String> map) {
		 TUser currUser = null;
		try{
			
			Object object = super.getBaseDao().queryForObject("UserManageMapper.selectUserByNameAndPass", map);
			currUser = (TUser)object;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return currUser;
	}

}
