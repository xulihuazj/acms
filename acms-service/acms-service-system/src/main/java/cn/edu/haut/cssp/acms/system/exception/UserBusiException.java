package cn.edu.haut.cssp.acms.system.exception;


/**
 * 管理员模块自定义顶级异常
 * Description:
 * @project:acms-service-system
 * @author: xulihua
 * @date: 2017年3月27日上午12:00:37
 * @note:
 */
public class UserBusiException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public UserBusiException() {
    }

    public UserBusiException(String message) {
        super(message);
    }

}
