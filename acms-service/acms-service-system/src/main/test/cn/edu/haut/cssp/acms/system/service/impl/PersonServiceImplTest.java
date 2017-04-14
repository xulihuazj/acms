package cn.edu.haut.cssp.acms.system.service.impl;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.system.dao.impl.PersonDaoImpl;

public class PersonServiceImplTest {

	private ApplicationContext applicationContext;
	
	@Before
	public void setUp() throws Exception{
		//创建spring容器
		applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-acms_system.xml");
		
	}
	
	@Test
	public void testQueryPersonDetail() throws Exception{
		PersonDaoImpl personDao = (PersonDaoImpl) applicationContext.getBean("personDaoImpl");
		try{
		TPerson tPerson = personDao.findUserById(1);
		System.out.println(tPerson);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
