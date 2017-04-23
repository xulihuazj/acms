package cn.edu.haut.cssp.acms.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.haut.cssp.acms.core.entity.TPerson;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IPersonService;

/**
 * 人员信息管理Action
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月13日上午11:37:47
 * @note:
 */
@Controller
public class PersonManagerAction extends BaseAction{

	@Autowired
	private IPersonService personService;
	
	/**
	 * 获取人员信息列表
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午3:02:36
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("/person/ajaxPersonList.do")
	public Object ajaxPersonList(ModelMap modelMap,HttpSession session){
		List<TPerson> personList = personService.ajaxPersonList();
		modelMap.put("personList", personList);
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-person.jsp";
	}
	
	/**
	 * 跳转到学院信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月17日下午3:02:11
	 * @return
	 */
	@RequestMapping("/person/ajaxCollegeList.do")
	public String ajaxCollegeList(ModelMap modelMap, HttpSession session){
		TUser currUser = (TUser) session.getAttribute("currUser");
		modelMap.put("userName", currUser.getUserName());
		return "/page-college.jsp";
	}
	
	/**
	 * 启用人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月13日上午11:48:20
	 * @param perId
	 * @return
	 */
	@RequestMapping(value = "/person/startPerson.do", method = RequestMethod.GET)
	public Object startPerson(Integer id) {
		String message = SUCCESS; 
		try {
			if(null != id && id > 0){
				personService.startPerson(id);
			}
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("启用人员参数异常", e);
		} catch (Exception e) {
			message = "启用人员失败";
			logger.error("启用人员失败，异常信息为", e);
		}
		return message;
	}
	

	/**
	 * 删除人员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:21:18
	 * @return: String
	 * @param
	 */
	@RequestMapping(value = "/person/deletePerson.do", method = RequestMethod.GET)
	public String deleteUser(Integer id) {
		String message = SUCCESS;
		try {
			personService.deletePerson(id);
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("删除人员参数异常", e);
		} catch (Exception e) {
			message = "删除人员失败";
			logger.error("删除人员失败，异常信息为", e);
		}
		return message;
	}
	
	/**
	 * 编辑人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月13日下午12:17:27
	 * @param person
	 * @return
	 */
	@RequestMapping(value = "/person/editPerson.do", method = RequestMethod.POST)
	public String editPerson(TPerson person) {
		String message = SUCCESS;
		if(null != person){
			try {
				personService.savePerson(person);
				//personService.updatePerson(person);
			}catch(Exception e){
				message = "编辑人员失败";
				logger.error(message, e);
			}
		}else{
			message = "请求参数错误";
		}
		return message;
	}
	
	/**
	 * 更新人员状态
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月14日下午12:28:46
	 * @param personId
	 */
	@RequestMapping(value = "/person/updatePersonStatus.do", method = RequestMethod.GET)
	public void updatePersonStatus(Integer personId){
		String message = SUCCESS;
		try {
			personService.deletePerson(personId);
		} catch(IllegalArgumentException e) {
			message = e.getMessage();
			logger.error("删除人员参数异常", e);
		} catch (Exception e) {
			message = "删除人员失败";
			logger.error("删除人员失败，异常信息为", e);
		}
	}
	
	/**
	 * 根据ID查询人员信息
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月14日下午1:16:00
	 * @param personId
	 * @return
	 */
	@RequestMapping(value = "/person/queryPersonDetail.do",method = RequestMethod.GET)
	@ResponseBody
	public Object queryPersonDetail(Integer personId) {
		try {
			TPerson tPerson = personService.queryPersonDetail(personId);
			return tPerson;
		} catch(IllegalArgumentException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 更新人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月13日下午12:17:27
	 * @param person
	 * @return
	 */
	@RequestMapping(value = "/person/updatePerosn.do", method = RequestMethod.POST)
	@ResponseBody
	public Object updatePerson(TPerson person) {
	Map<String, Object> message = new HashMap<>();
		if(null != person){
			try {
				personService.updatePerson(person);
				message.put("message", SUCCESS);
			}catch(Exception e){
				message.put("message", "更新人员信息是失败");
				logger.error("更新人员信息是失败,异常为:", e);
			}
		}else{
			message.put("message","请求参数异常");
		}
		return message;
	}
	
	
}
