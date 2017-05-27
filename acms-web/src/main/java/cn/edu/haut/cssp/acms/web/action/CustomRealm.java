package cn.edu.haut.cssp.acms.web.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IUserService;

/**
 * 自定义数据源
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年5月27日上午10:45:43
 * @note:
 */
public class CustomRealm extends AuthorizingRealm{
	
	//注入service
	@Autowired
	 private IUserService userService;
	
	// 设置realm的名称
	@Override
	public void setName(String name) {
		super.setName("customRealm");
	}
	
	/**
	 * 用于认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// token是用户输入的用户名和密码 
		// 第一步从token中取出用户名
		String username = (String) token.getPrincipal();
		// 第二步：根据用户输入的userCode从数据库查询
		TUser tUser = null;
		try {
			tUser = userService.getUserByUserName(username);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(tUser==null){
			return null;
		}
		String password = tUser.getPassword();
		
		//根据用户id取出菜单
/*		List<SysPermission> menus  = null;
		try {
			//通过service取出菜单 
			menus = sysService.findMenuListByUserId(sysUser.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//将用户菜单 设置到activeUser
		activeUser.setMenus(menus);*/

		//将activeUser设置simpleAuthenticationInfo
		/*SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
				activeUser, password,ByteSource.Util.bytes(salt), this.getName());*/
		
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(username, password, this.getName());

		return simpleAuthenticationInfo;
	}

	/**
	 * 用于授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String username = (String) principals.getPrimaryPrincipal();
		
		List<String> permissions = new ArrayList<>();
		permissions.add("person:ajaxCollegeList");
		
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		simpleAuthorizationInfo.addStringPermissions(permissions);
		return simpleAuthorizationInfo;
	}



}
