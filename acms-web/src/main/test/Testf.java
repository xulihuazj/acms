import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.haut.cssp.acms.system.service.IUserService;

public class Testf {

	private SqlSessionFactory sqlSessionFactory;
	
	@Autowired
	private IUserService userService;
/*	@Before
	public void setUp(){
	
		String resource = "config/SqlMapConfig.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		    sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}*/
	
/*	@Test
	public void test(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<>();
		map.put("perId", 1);
		map.put("perStatus", 2);
		try {
			int i = sqlSession.update("TPersonMapper.updatePersonStatus", map);
			sqlSession.commit(true);
			System.out.println(i);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
/*	@Test
	public void test(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<>();
		//map.put("perName", "xulihua");
		map.put("perId", 1);
		map.put("perStatus", 2);
		try {
			int i = sqlSession.update("TPersonMapper.updatePersonStatus", map);
			sqlSession.commit(true);
			System.out.println(i);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
		@Test
	public void test(){
		Map<String, Object> map = new HashMap<>();
		map.put("perName", "xulihua");
		try {
			userService.getUserByUserName("admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
