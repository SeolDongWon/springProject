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
	// JDBC ���ú���
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	

	public UserDAO() {
		System.out.println("UserDAO()");
	}

	// SQL��ɾ��
	private final String USER_GET = "select * from users where id=? and password=?";

	// CRUD ����� �޼ҵ� ����
	// ȸ�����
	public UserVO getUser(UserVO vo) {
		UserVO user = null;

		try {
			System.out.println(">>>>JDBC�� getUser() ���ó��");
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
