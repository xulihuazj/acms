package cn.edu.haut.cssp.acms.system.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import cn.edu.haut.cssp.acms.core.entity.TPerson;

public class PersonDaoImpl extends SqlSessionDaoSupport{
		
		public TPerson findUserById(int id) throws Exception{
			SqlSession sqlSession = this.getSqlSession();
			TPerson person = sqlSession.selectOne("PersonMapper.queryPersonDetail", id);
			sqlSession.close();
			return person;
		}

}
