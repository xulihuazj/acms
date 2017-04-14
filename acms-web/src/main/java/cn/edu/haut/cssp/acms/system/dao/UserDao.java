package cn.edu.haut.cssp.acms.system.dao;

import cn.edu.haut.cssp.acms.core.entity.TUser;

public interface UserDao {


	public TUser findUserById(int id) throws Exception;
	
	public TUser getUserByUserName(String userName)throws Exception;
}
