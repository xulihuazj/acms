package cn.edu.haut.cssp.acms.system.service;

import java.util.List;

import cn.edu.haut.cssp.acms.core.entity.TPerson;

/**
 * 人员信息管理
 * Description:
 * @project:acms-service-system
 * @author: 徐礼华
 * @date: 2017年4月9日下午6:13:36
 * @note:
 */
public interface IPersonService {
	
	
	/**
	 * 保存人员信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:14:37
	 * @param person
	 */
	public void savePerson(TPerson person);
	
	/**
	 * 根据人员ID查询人员详细信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:15:56
	 * @param personId
	 * @return
	 */
	public TPerson queryPersonDetail(Integer personId);
	
	/**
	 * 根据条件分页查询人员信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:21:02
	 * @return
	 */
	public List<TPerson> ajaxPersonList();
	
	/**
	 * 根据ID启用人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:23:00
	 * @param personId
	 */
	public void startPerson(Integer personId);
	
	/**
	 * 根据ID禁用人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:23:46
	 * @param personId
	 */
	public void stopPerson(Integer personId);
	
	/**
	 * 根据ID删除人员(软删除)
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月9日下午6:24:20
	 * @param personId
	 */
	public void deletePerson(Integer personId);
	
	
}
