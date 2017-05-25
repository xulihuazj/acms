package cn.edu.haut.cssp.acms.test;

import redis.clients.jedis.Jedis;

public class RedisTest {
	
	public static void main(String[] args) {
		
		// 连接本地的Redis服务
		Jedis jedis = new Jedis("106.14.217.97");
		
		System.out.println("连接redis服务");
		
		//查看是否运行
		System.out.println("Server is running:" + jedis.ping());
		
	}
}
