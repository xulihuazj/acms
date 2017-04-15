package cn.edu.haut.cssp.acms.system.service;

import java.util.Map;

import cn.edu.haut.cssp.acms.core.bean.DataQueryExt;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.core.utils.DateQueryBean;
import cn.edu.haut.cssp.acms.log.util.LitePaging;
import cn.edu.haut.cssp.acms.system.exception.UserBusiException;


/**
 * 用户管理服务接口类
 * Description:
 * @author: xulihua
 * @date: 2017年1月18日下午2:43:53
 */
public interface IUserService {
	
	/**
	 * 根据用户名获取用户信息
	 * @author: xulihua
	 * @date: 2017年1月18日下午2:47:06
	 * @return: AcmsUser
	 */
	public TUser getUserByUserName(String userName) throws UserBusiException; 
	
	/**
	 * 分页查询用户信息
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:17:39
	 * @return: LitePaging<AcmsUser>
	 */
	public LitePaging<TUser> queryAllUsers(TUser condition,DataQueryExt queryExt, DateQueryBean queryBean)throws UserBusiException;
	
	/**
	 * 根据用户名和密码查询用户信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月4日下午12:04:21
	 * @param map
	 * @return
	 */
	public TUser selectUserByNameAndPass(Map<String, String> map);
	
	/**
	 * 保存用户信息
	 * @author: xulihua
	 * @date: 2017年1月18日下午2:50:43
	 * @return: void
	 */
	public Integer saveUser(TUser user,Long[] roleId)throws UserBusiException;
	
	/**
	 * 对密码进行修改，更新用户信息
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:09:19
	 * @return: void
	 */
	public void updateUser(TUser user)throws UserBusiException;
	
	/**
	 * 通过用户id查询信息
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:03:02
	 * @return: AcmsUser
	 */
	public TUser findUserById(Long userId)throws UserBusiException;
	
	/**
	 * 通过userId删除用户
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:04:19
	 * @return: void
	 * @throws Exception 
	 */
	public Integer deleteUserById(Long userId)throws UserBusiException;
	
	/**
	 * 通过userId重置密码
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:05:12
	 * @return: void
	 */
	public Integer resetPassword(Long userId, String newPwd)throws UserBusiException;
	
	/**
	 * 根据userId开启用户
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:06:49
	 * @return: void
	 */ 
	public Integer startUser(Long userId)throws UserBusiException;
	
	/**
	 * 根据userId暂停用户
	 * @author: xulihua
	 * @date: 2017年1月18日下午3:07:44
	 * @return: void
	 */
	public Integer suspendUser(Long userId)throws UserBusiException;
	
	/**
	 * 检测用户名是否可用
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午11:11:14
	 * @return: boolean
	 * @param:
	 */
	public boolean isNameExist(String userName)throws UserBusiException;
	
}
