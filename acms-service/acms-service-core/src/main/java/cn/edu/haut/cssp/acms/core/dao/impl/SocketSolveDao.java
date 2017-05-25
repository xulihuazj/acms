package cn.edu.haut.cssp.acms.core.dao.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;

public class SocketSolveDao extends SqlSessionDaoSupport {

	private SqlSessionFactory sqlSessionFactory;
	
	public void init(){
		String resource = "/config/SqlMapConfig.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	public TUser testFindUserById(){
		init();
		SqlSession sqlSession = null;
		try {
		 sqlSession = sqlSessionFactory.openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
		TUser user = null;
		try{
			user = sqlSession.selectOne("UserManageMapper.findUserById", 1);
		}catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}
	
	
	/**
	 * 查询是否有 卡 对应的 人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月27日下午12:57:57
	 * @param sn
	 * @return
	 */
	public TPerson testFindPersonBycardsn(String sn){
		init();
		SqlSession sqlSession = null;
		try {
		 sqlSession = sqlSessionFactory.openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
		TPerson tPerson = null;
		try{
			tPerson = sqlSession.selectOne("TPersonMapper.findPersonBycardsn", sn);
		}catch(Exception e){
			e.printStackTrace();
		}
			return tPerson;
	}
	
	public Integer testFindDeviceStatus(String devicesn){
		init();
		SqlSession sqlSession = null;
		sqlSession = sqlSessionFactory.openSession();
		try{
			 Map<String, Object> map = sqlSession.selectOne("DeviceInfoMapper.selectStatusBySn",devicesn);
			 return (Integer) map.get("status");
		}catch(Exception e){
			e.printStackTrace();
		}
			return null;
	}
	
}
