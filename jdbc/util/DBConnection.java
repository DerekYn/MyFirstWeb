package jdbc.util;

import java.sql.*;

public class DBConnection {
	
	// 오라클 서버의 물리적 주소
	private static final String _URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
	
	// 오라클 서버에 연결할 계정명
	private static final String _USER = "myorauser";
	
	// 오라클 서버에 연결할 계정의 암호
	private static final String _PASSWORD = "eclass";
	
	// 물리적으로 떨어져 있는 오라클 서버에 연결통로 만들기
	private static Connection conn = null;

	// === static 초기화 블럭 === //
	static {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 오라클 드라이버 로딩하기
			
			conn = DriverManager.getConnection(_URL, _USER, _PASSWORD);
			// 오라클 서버에 연결해주는 통로인 Connection 객체 생성
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// === static 초기화 블럭 끝 === //
	
	// === Connection 객체 리컨 시켜주기 === //
	public static Connection getConn() throws SQLException {
		
		if(conn == null || conn.isClosed()) {
			conn = DriverManager.getConnection(_URL, _USER, _PASSWORD);
			// 오라클 서버에 연결해주는 통로인 Connection 객체 생성
		}
		
		return conn;
	}
	
	// === Connection 객체 자원 반납하여 닫기 ===
	public static void close() {
		if(conn == null) {
			return;
		}
		try {
			if(!conn.isClosed()) {
				conn.close();
				conn = null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conn = null;
	}
}
