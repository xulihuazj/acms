package cn.edu.haut.cssp.acms.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

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
			int i = super.getBaseDao().getSqlSession().insert("PersonMapper.savePerson", person);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public TPerson queryPersonDetail(Integer perId) {
		System.out.println(1111);
		try {
			TPerson person = super.getBaseDao().getSqlSession().selectOne("PersonMapp.queryPersonDetail", perId);
			return person;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<TPerson> ajaxPersonList() {
		return null;
	}

	@Override
	public void startPerson(Integer personId) {

	}

	@Override
	public void stopPerson(Integer personId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("perId", personId);
		try{
			super.getBaseDao().getSqlSession().update("PersonMapper.updatePersonStatus", paramMap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void deletePerson(Integer personId) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("perId", personId);
		try{
			super.getBaseDao().getSqlSession().update("PersonMapper.updatePersonStatus", paramMap);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
