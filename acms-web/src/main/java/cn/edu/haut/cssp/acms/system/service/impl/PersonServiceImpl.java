package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.edu.haut.cssp.acms.core.dao.impl.BaseDaoImpl;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.system.dao.impl.UserDaoImpl;
import cn.edu.haut.cssp.acms.system.service.IPersonService;

/**
 * 人员管理实现类 Description:
 * 
 * @project:acms-service-system
 * @author: 徐礼华
 * @date: 2017年4月14日上午11:41:18
 * @note:
 */
@Service("personService")
public class PersonServiceImpl extends BaseServiceImpl implements IPersonService {

	private Logger logger = LoggerFactory.getLogger(PersonServiceImpl.class);
	
	@Override
	public void savePerson(TPerson person) {
		try {
			int i = super.getBaseDao().getSqlSession().insert("TPersonMapper.savePerson", person);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public TPerson queryPersonDetail(Integer perId) {
		try {
			BaseDaoImpl daoImpl = super.getBaseDao();
			SqlSession sqlSession = daoImpl.getSqlSession();
			Map<String, Object> map = new HashMap<>();
			map.put("perId", perId);
			TPerson person = sqlSession.selectOne("TPersonMapper.queryPersonDetail", perId);
			//System.out.println(person);
			//TPerson person = super.getBaseDao().getSqlSession().selectOne("PersonMapp.queryPersonDetail", perId);
			return person;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<TPerson> ajaxPersonList() {
		try{
		List<TPerson> personList = super.getBaseDao().getSqlSession().selectList("TPersonMapper.getUserList",1);
		for(TPerson person:personList){
		}
		System.out.println(personList.get(0).getCardSN());
		return personList;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void startPerson(Integer personId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("perId", personId);
		paramMap.put("perStatus", TPerson.ENUM_PERSON_STATUS.per_normal.value);
		try{
			super.getBaseDao().getSqlSession().update("TPersonMapper.updatePersonStatus", paramMap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void stopPerson(Integer personId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("perId", personId);
		paramMap.put("perStatus", TPerson.ENUM_PERSON_STATUS.per_stop.value);
		try{
			super.getBaseDao().getSqlSession().update("TPersonMapper.updatePersonStatus", paramMap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void deletePerson(Integer personId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("perId", personId);
		paramMap.put("perStatus", TPerson.ENUM_PERSON_STATUS.per_stop.value);
		try{
			super.getBaseDao().getSqlSession().update("TTPersonMapper.updatePersonStatus", paramMap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
