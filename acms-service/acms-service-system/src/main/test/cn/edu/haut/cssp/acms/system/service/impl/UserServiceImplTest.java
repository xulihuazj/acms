package cn.edu.haut.cssp.acms.system.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IUserService;


public class UserServiceImplTest {

	@Autowired
	private IUserService userService;

	@Test
	public void testGetUserByUserName() {
		TUser tUser = userService.getUserByUserName("admin");
		System.out.println(tUser.getPassword());
	}

}
