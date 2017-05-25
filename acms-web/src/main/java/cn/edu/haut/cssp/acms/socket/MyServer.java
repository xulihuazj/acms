package cn.edu.haut.cssp.acms.socket;

import static org.mockito.Matchers.charThat;
import static org.mockito.Matchers.startsWith;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

import org.apache.commons.lang3.StringUtils;

import cn.edu.haut.cssp.acms.bean.SocketClientBean;
import cn.edu.haut.cssp.acms.core.dao.impl.SocketSolveDao;
import cn.edu.haut.cssp.acms.core.entity.TUser;
import cn.edu.haut.cssp.acms.system.service.IUserService;
import cn.edu.haut.cssp.acms.system.service.impl.UserServiceImpl;

public class MyServer {

	public static List<SocketClientBean> clientlist = new ArrayList<SocketClientBean>();

	private static Timer timer = new Timer();

	private static IUserService userService;

	private static SocketSolveDao solveDao;

	// 定时刷新
	public static void rerfresh() {
		timer.schedule(new MyClientRefreshTask(), 1000 * 2, 1000 * 15);
	}

	// 销毁定时器
	public static void destroyedTimer() {
		if (timer != null) {
			timer.cancel();
		}
	}

	public static void invoke(final Socket socket) throws IOException {
		System.out.println("--------------invoke---------------------------------");
		System.out.println(socket.getLocalAddress());
		System.out.println(socket.getLocalSocketAddress());
		// 启了个线程
		new Thread(new Runnable() {
			public void run() {
				try {
					boolean flag = true; //标志位
					solveDao = new SocketSolveDao();
					Integer status = 0; // 状态码
					try {
						do {
							InputStream inputStream = socket.getInputStream();// 读取数据的流
							OutputStream outputStream = socket.getOutputStream();// 打印的流
							byte[] buf = new byte[1024];
							int len = inputStream.read(buf);
							status = solveDao.testFindDeviceStatus("111111aaaaaaa"); // 获取当前设备连接状态：1－设备正常；2－设备已停用
							System.out.println(status);
							String req = new String(buf, 0, len);
							if (null != status && 1 == status ) { // 设备正常
								flag = true;
								String reqText = new String(buf, 0, len);// 请求值
								System.out.println("reqText:>>"+reqText+"<<");
								/*if(flag && reqText.equals("stop")){
								}*/
								outputStream.write("s".getBytes("UTF-8"));
								outputStream.flush();
								int length = reqText.length();// 取长度
								System.out.println("正常长度："+length);
								if (15 == length) { // sn序列号
									String sn = reqText.substring(3, 11);
									solveDao = new SocketSolveDao();
									System.out.println("userName:" + solveDao.testFindPersonBycardsn(sn).getPerName());
									//System.out.println(reqText.substring(3, length));
									if(null != solveDao.testFindPersonBycardsn(sn)){  //开门
										outputStream.write("o".getBytes("UTF-8"));
										outputStream.flush();
									}
								}
							}else if(null != status && status == 2){ // 设备已停用
								flag = false;
								String reqText = new String(buf, 0, len);// 请求值
								System.out.println("停用中:"+reqText);
								if(reqText.equals("o\ropen"))
								System.out.println("停用长度为："+reqText.length());
								outputStream.write("p".getBytes("UTF-8")); // 返回p(停止门禁的设置)
								outputStream.flush();
							}
						} while (true);
					} catch (Exception ex) {
						ex.printStackTrace();
					} finally {
						try {
							socket.close();
						} catch (Exception e) {
							System.out.println("关闭失败3");
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}).start();
	}

	/*
	 * 定时器
	 */
	static class MyClientRefreshTask extends java.util.TimerTask {
		public void run() {
			refreshClient();
		}
	}

	/*
	 * 刷新客户端
	 */
	private static void refreshClient() {
		/*
		 * System.out.println(
		 * "---------------刷新客户端执行开始-------------------------");
		 */
		List<SocketClientBean> dels = new ArrayList<SocketClientBean>();
		for (int i = 0; i < MyServer.clientlist.size(); i++) {
			if (MyServer.clientlist.get(i).getSocket().isClosed()) {
				System.out.println("客户端删除!");
				dels.add(clientlist.get(i));
			}
		}
		/*
		 * System.out.println("客户端数量 :" + clientlist.size());
		 * System.out.println("已删除客户端集合大小:" + dels.size());
		 */
		clientlist.removeAll(dels);
		/*
		 * System.out.println("客户端集合剩余大小:" + clientlist.size());
		 * System.out.println(
		 * "---------------刷新客户端执行结束-------------------------");
		 */
	}

}