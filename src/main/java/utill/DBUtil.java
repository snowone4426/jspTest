package utill;

import java.sql.*;
import java.util.ArrayList;

public class DBUtil {
	static private ArrayList<Connection> connectionPool = new ArrayList<>();
	
	private DBUtil() {}

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("-------------------SQL과 연결-------------------");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("--------------------드라이버 검색 실패--------------------");
		}
	}

	public static Connection getConnection (String id, String pw) {
		Connection conn = null;
		if(conn == null) {
			try {
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", id, pw);
				System.out.println("접속여부 : " + !conn.isClosed() + "\n");
				connectionPool.add(conn);
			} catch (SQLException e) {
				System.out.printf("--------------------%s 접속 실패--------------------",id);
				e.printStackTrace();
			}
			
		}
		return conn;
	}
	
	public void close(Connection c) {
		for (Connection conn:connectionPool) {
			if (conn == c) {
				try {
					c.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
