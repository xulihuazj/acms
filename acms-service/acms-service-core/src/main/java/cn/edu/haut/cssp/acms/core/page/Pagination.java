package cn.edu.haut.cssp.acms.core.page;

import java.util.List;

import cn.edu.haut.cssp.acms.core.utils.SimplePage;

/**
 * 列表分页。包含具体数据list。
 * Description:
 * @project:acms-service-core
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:38:54
 * @note:
 */
public class Pagination<T> extends SimplePage implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 
	 * 类的构造方法
	 * 创建一个新的实例 Pagination.
	 * @param pageNo 当前页码
	 * @param pageSize 每页显示条数
	 * @param totalCount 总记录数
	*/
	public Pagination(Integer pageNo, Integer pageSize, int totalCount) {
		super(pageNo, pageSize, totalCount);
	}

	/**
	 * 
	 * 类的构造方法
	 * 创建一个新的实例 Pagination.
	 * @param pageNo 当前页码
	 * @param pageSize 每页显示条数
	 * @param totalCount 总记录数
	 * @param list 分页内容
	*/
	public Pagination(Integer pageNo, Integer pageSize, int totalCount, List<T> list) {
		super(pageNo, pageSize, totalCount);
		this.list = list;
	}

	/**
	 * 第一条数据位置
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:39:09
	 * @return
	 */
	public int getFirstResult() {
		return (pageNo - 1) * pageSize;
	}

	/**
	 * 当前页的数据
	 */
	private List<T> list;

	/**
	 * 获得分页内容
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:39:21
	 * @return
	 */
	public List<T> getList() {
		return list;
	}

	/**
	 * 设置分页内容
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:39:28
	 * @param list
	 */
	public void setList(List<T> list) {
		this.list = list;
	}
}
