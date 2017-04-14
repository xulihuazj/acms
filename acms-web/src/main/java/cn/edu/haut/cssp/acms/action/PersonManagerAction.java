package cn.edu.haut.cssp.acms.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.haut.cssp.acms.core.entity.TPerson;
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
@RequestMapping("/person")
public class PersonManagerAction extends BaseAction{

	@Autowired
	private IPersonService personService;
	
	/**
	 * 启用人员
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月13日上午11:48:20
	 * @param perId
	 * @return
	 */
	@RequestMapping(value = "/startPerson.do", method = RequestMethod.GET)
	public Object startPerson(Integer id) {
		String message = SUCCESS; 
		try {
			if(null != id && id > 0){
				personService.startPerson(id);
			}
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
	 * 删除人员
	 * @Description:
	 * @author: xulihua
	 * @date: 2017年3月25日上午10:21:18
	 * @return: String
	 * @param
	 */
	@RequestMapping(value = "/deletePerson.do", method = RequestMethod.GET)
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
	@RequestMapping(value = "/editPerson.do", method = RequestMethod.GET)
	public String editPerson(TPerson person) {
		String message = SUCCESS;
		if(null != person){
			try {
				personService.savePerson(person);
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
	 * 
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月14日下午12:28:46
	 * @param personId
	 */
	@RequestMapping(value = "/updatePersonStatus.do", method = RequestMethod.GET)
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
	@RequestMapping(value = "/queryPersonDetail.do",method = RequestMethod.GET)
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
	
	
}
