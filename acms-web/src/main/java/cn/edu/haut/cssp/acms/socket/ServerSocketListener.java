package cn.edu.haut.cssp.acms.socket;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import cn.edu.haut.cssp.acms.bean.SocketClientBean;

/**
 * socket监听器
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月27日上午8:25:58
 * @note:
 */
public class ServerSocketListener implements ServletContextListener {

	// socket线程
	private SocketThread socketThread;
	/**
	 * 初始化
	 */
	@Override
	public void contextInitialized(ServletContextEvent e) {
		ServletContext servletContext = e.getServletContext();
        System.out.println("---------------------Server contextInitialized over-----------------------------");
        if (socketThread == null)
        {
            socketThread = new SocketThread(null, servletContext);
            socketThread.start(); 
        }
	}
	
	/**
	 * 销毁
	 */
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
		if (socketThread != null && socketThread.isInterrupted())
        {
            socketThread.closeServerSocket();
            socketThread.interrupt();
        }
	}

}

/**
 * Socket线程
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年4月27日上午8:13:15
 * @note:
 */
class SocketThread extends Thread {
	
	Integer count = 0;
	
	private ServletContext servletContext;
	
	private ServerSocket serverSocket;

	/**
	 * 构造方法
	 * @author: 徐礼华
	 * @date: 2017年4月27日上午8:13:43
	 * @param serverSocket
	 * @param servletContext
	 */
	public SocketThread(ServerSocket serverSocket, ServletContext servletContext) {
		this.servletContext = servletContext;
		// 从web.xml中context-param节点获取socket端口
		String port = this.servletContext.getInitParameter("socketPort");
		if (serverSocket == null) {
			try {
				this.serverSocket = new ServerSocket(Integer.parseInt(port));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public void run() {
		try {
			Integer count = 0;
			while (!this.isInterrupted()) {
				MyServer.rerfresh();
				Socket socket = serverSocket.accept();
				count++;
				System.out.println("Socket服务器线程:" + count);
				if (socket != null) {
					SocketClientBean client = new SocketClientBean();
					client.setSocket(socket);
					MyServer.clientlist.add(client);
					System.out.println("远程连接IP+Port:" + socket.getRemoteSocketAddress().toString());
					MyServer.invoke(socket);
				}
			}
		} catch (Exception ex) {
			System.out.println("Socket线程启动失败:" + ex.getMessage());
		}
	}
	/**
	 * 关闭socket服务器
	 * @Description:
	 * @author: 徐礼华
	 * @date: 2017年4月27日上午8:30:12
	 */
	public void closeServerSocket() {
		try {
			if (serverSocket != null && !serverSocket.isClosed()) {//不为空，未关闭
				serverSocket.close(); //关闭服务器
				MyServer.destroyedTimer(); //销毁定时器
			}
		} catch (Exception ex) {
			System.out.println("Socket线程关闭失败:" + ex.getMessage());
		}
	}
}