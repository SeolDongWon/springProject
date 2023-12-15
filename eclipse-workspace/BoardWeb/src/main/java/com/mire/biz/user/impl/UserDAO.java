package com.mire.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.mire.biz.common.JDBCUtil;
import com.mire.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO{
	// JDBC 관련변수
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	

	public UserDAO() {
		System.out.println("UserDAO()");
	}

	// SQL명령어들
	private final String USER_GET = "select * from users where id=? and password=?";

	// CRUD 기능의 메소드 구현
	// 회원등록
	public UserVO getUser(UserVO vo) {
		UserVO user = null;

		try {
			System.out.println(">>>>JDBC로 getUser() 기능처리");
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(USER_GET);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getNString("name"));
				user.setRole("role");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return user;
	}

}
