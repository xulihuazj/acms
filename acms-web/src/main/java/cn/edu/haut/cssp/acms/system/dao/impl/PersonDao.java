package cn.edu.haut.cssp.acms.system.dao.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.haut.cssp.acms.core.entity.TPerson;

public class PersonDao extends SqlSessionDaoSupport{

	 @Autowired
	 private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
    public TPerson getPerson(int id) {
    	Map<String, Object> map = new HashMap<>();
    	map.put("perName", "xulihua");
    	SqlSession sqlSession = this.getSqlSession();
    	sqlSession.selectOne("test.getPerson", map);
    	return null;
    }
    
}
