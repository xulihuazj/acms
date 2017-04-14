package cn.edu.haut.cssp.acms.system.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.entity.User;
@Repository
public class UserDaoImpl extends SqlSessionDaoSupport{

	private SqlSessionFactory sqlSessionFactory;
	
	public TUser findUserById(int id) throws Exception{
		SqlSession sqlSession = this.getSqlSession();
		TUser user = sqlSession.selectOne("UserManagementMapper.findUserById", id);
		System.out.println(user);
		sqlSession.close();
		return user;
	}
	
	public TUser getUserByUserName(String userName)throws Exception{
		Map<String, Object> map	= new HashMap<>();
		map.put("userName", userName);
		System.out.println(11111);
		SqlSession sqlSession = this.getSqlSession();
		TUser user = sqlSession.selectOne("UserManageMapper.getUserByUserName", map);
		sqlSession.close();
		return user;
	}
	
}
