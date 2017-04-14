package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.dao.UserDao;
import cn.edu.haut.cssp.acms.system.dao.impl.UserDaoImpl;
import cn.edu.haut.cssp.acms.system.exception.UserBusiException;
import cn.edu.haut.cssp.acms.system.service.IUserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl implements IUserService{

	private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	

	@Override
	public TUser findUserById(Long userId){
		System.out.println(userId);
		System.out.println(3333);
		try{
			//TUser tUser = userDao.findUserById(2);
			super.getBaseDao().getSqlSession().selectOne("UserManagementMapper.findUserById", 2);
			System.out.println();
			return null;
		}catch(Exception e){
			System.out.println("执行sql出错");
			e.printStackTrace();
		}
		return null;
	}


	@Override
	public TUser getUserByUserName(String userName) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public LitePaging<TUser> queryAllUsers(TUser condition, DataQueryExt queryExt, DateQueryBean queryBean)
			throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public TUser selectUserByNameAndPass(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Integer saveUser(TUser user, Long[] roleId) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void updateUser(TUser user) throws UserBusiException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Integer deleteUserById(Long userId) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Integer resetPassword(Long userId) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Integer startUser(Long userId) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Integer suspendUser(Long userId) throws UserBusiException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean isNameExist(String userName) throws UserBusiException {
		// TODO Auto-generated method stub
		return false;
	}

	
}
