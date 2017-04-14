package cn.edu.haut.cssp.acms.system.service.impl;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IPersonService;
import cn.edu.haut.cssp.acms.system.service.IUserService;


public class UserServiceImplTest {

	@Autowired
	private IUserService userService;
	
	@Autowired
	private IPersonService personService;

	private SqlSessionFactory sqlSessionFactory;
	
	@Before
	public void init() throws IOException {
		String source = "config/SqlMapConfig.xml";
		InputStream inputStream = Resources.getResourceAsStream(source);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	

/*	@Test
	public void testGetUserByUserName() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TUser tUser = null;
		Map<String, Object> map	= new HashMap<>();
		map.put("userName", "admin");
		try{
			tUser = sqlSession.selectOne("UserManagementMapper.getUserByUserName",1);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		System.out.println(tUser);
	}*/
	
	@Test
	public void testGetPersonById() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TPerson person = null;
		Map<String, Object> map	= new HashMap<>();
		try{
			//personService.queryPersonDetail(1);
			
			//person = sqlSession.selectOne("PersonMapper.getUserList",map);
			map.put("perName", "gggg");
			map.put("id", 2);
			map.put("cardSN", "dfghjkl");
			//sqlSession.selectList("PersonMapper.updatePerson",map);
			int i = sqlSession.update("PersonMapper.updatePerson", map);
			sqlSession.commit(true);
			System.out.println(i);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	

}
