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


public class UserServiceImplTest {

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
		Map<String, String> map	= new HashMap<>();
		map.put("id", "admin");
		try{
			//tUser = sqlSession.selectOne("UserManagementMapper.getUserById",1);
			sqlSession.selectOne("UserManagementMapper.checkNameIsExist", map);
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
		/*	map.put("perName", "gggg");
			map.put("id", 3);
			map.put("cardSN", "dfghjkl");
			map.put("perId", "201323030419");
			map.put("perType", 1);
			map.put("perSex", 1);
			map.put("perIdentificate", "4567890098456789");*/
			//List<Object> list = sqlSession.selectList("PersonMapper.getUserList",map);
			Object object = sqlSession.selectOne("PersonMapper.queryPersonDetail",1);
			//int i = sqlSession.update("PersonMapper.updatePerson", map);
			/*int i = sqlSession.insert("PersonMapper.savePerson", map);*/
			//sqlSession.commit(true);
			System.out.println(object);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	

}
