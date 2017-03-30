package cn.edu.haut.cssp.acms.person.service;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.core.utils.LitePaging;

/**
 * 持卡人员信息管理类
 * Description:
 * @project:acms-service-system
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:51:06
 * @note:
 */
public interface IStudentService {

	/**
	 * 分页获取持卡人员信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:42:08
	 * @return
	 */
	public LitePaging<TPerson> ajaxList(TPerson condition, DataQueryExt queryExt, DateQueryBean queryBean);
	
	/**
	 * 根据ID查询持卡人员详细信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:49:12
	 * @param stuId
	 * @return
	 */
	public TPerson queryDetailById(Long stuId);
	
}
