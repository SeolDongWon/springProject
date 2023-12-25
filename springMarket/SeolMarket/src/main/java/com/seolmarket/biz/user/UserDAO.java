package com.seolmarket.biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.seolmarket.biz.common.JDBCUtil;

@Repository("userDAO")
public class UserDAO {
	// JDBC 관련변수
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public UserDAO() {
		System.out.println("UserDAO()");
	}

	// SQL명령어들
	private final String INSERT_USER ="insert into user_tb(no, id, password, name,tel,address) values(user_no_seq.nextval,?,?,?,?,?)";
	private final String LOGIN_USER = "select * from user_tb where id=? and password=?";
//	private final String ID_DOUBLE = "select * from users where id=?";
//	private final String USER_LIST = "select * from users";
//	private final String USER_UPDATE = "update users set password=?, name=?, role=? where id=?";
//	private final String USER_DELETE = "delete from users where id=? and password=?";

	// CRUD 기능의 메소드 구현
	// 회원등록
	
	public int userInsert(UserVO vo) {
	int userInsertFlag = 0;
	System.out.println("getMemberId : "+vo.getId());
	System.out.println("getMemberPassword : "+vo.getPassword());

	try {
		System.out.println(">>>>JDBC userInsert()");
		conn = JDBCUtil.getConnection();
		pstmt = conn.prepareStatement(INSERT_USER);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPassword());
		pstmt.setString(3, vo.getName());
		pstmt.setString(4, vo.getTel());
		pstmt.setString(5, vo.getAddress());
		if (pstmt.executeUpdate() > 0) {
			userInsertFlag = 1;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		JDBCUtil.close(rs, pstmt, conn);
	}
	return userInsertFlag;
}
	
	
	public UserVO userLogin(UserVO vo) {
		UserVO userVO = null;

		try {
			System.out.println(">>>>JDBC userLogin()");
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(LOGIN_USER);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				userVO = new UserVO();
				userVO.setNo(Integer.parseInt(rs.getString("no")));
				userVO.setId(rs.getString("id"));
				userVO.setPassword(rs.getString("password"));
				userVO.setName(rs.getString("name"));
				userVO.setTel(rs.getString("tel"));
				userVO.setAddress(rs.getString("address"));
				userVO.setRegDate(rs.getString("regdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		System.out.println("vo.getId() : "+vo.getId());
		System.out.println("vo.getPassword() : "+vo.getPassword());
		return userVO;
	}
//
//	public int idDoubleCheck(UserVO vo) {
//
//		int idCheck = 0;
//
//		try {
//			System.out.println(">>>>JDBC idDoubleCheck()");
//			conn = JDBCUtil.getConnection();
//			pstmt = conn.prepareStatement(ID_DOUBLE);
//			pstmt.setString(1, vo.getId());
//			rs = pstmt.executeQuery();
//
//			if (rs.next()) {
//				idCheck = 1;
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return idCheck;
//	}
//
//	public int insertUser(UserVO vo) {
//		int insertUserFlag = 0;
//
//		try {
//			System.out.println(">>>>JDBC insertUser()");
//			conn = JDBCUtil.getConnection();
//			pstmt = conn.prepareStatement(USER_INSERT);
//			pstmt.setString(1, vo.getId());
//			pstmt.setString(2, vo.getPassword());
//			pstmt.setString(3, vo.getName());
//			pstmt.setString(4, vo.getRole());
//			if (pstmt.executeUpdate() > 0) {
//				insertUserFlag = 1;
//			} else {
//				insertUserFlag = -1;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, pstmt, conn);
//		}
//		return insertUserFlag;
//	}
//
//	public synchronized ArrayList<UserVO> getUserList(UserVO vo) {
//		ArrayList<UserVO> arrList = new ArrayList<UserVO>();
//		UserVO user = null;
//		try {
//			System.out.println(">>>>JDBC getUserList()");
//			conn = JDBCUtil.getConnection();
//			pstmt = conn.prepareStatement(USER_LIST);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				user = new UserVO();
//				user.setId(rs.getString("id"));
//				System.out.println(rs.getString("id"));
//				user.setPassword(rs.getString("password"));
//				user.setName(rs.getString("name"));
//				user.setRole(rs.getString("role"));
//				arrList.add(user);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (rs != null) {
//					rs.close();
//				}
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return arrList;
//	}
//
//	public synchronized int updateUser(UserVO vo) {
//		int updateUserFlag = 0;
//
//		try {
//			System.out.println(">>>>JDBC getUserList()");
//			conn = JDBCUtil.getConnection();
//			pstmt = conn.prepareStatement(USER_UPDATE);
//			pstmt.setString(1, vo.getPassword());
//			pstmt.setString(2, vo.getName());
//			pstmt.setString(3, vo.getRole());
//			pstmt.setString(4, vo.getId());
//			if (pstmt.executeUpdate() > 0) {
//				updateUserFlag = 1;
//			} else {
//				updateUserFlag = -1;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return updateUserFlag;
//	}
//
//	public int deleteUser(UserVO vo) {
//		int deleteUserFlag = 0; // 결과치
//
//		try {
//			System.out.println(">>>>JDBC deleteUser()");
//			conn = JDBCUtil.getConnection();
//			pstmt = conn.prepareStatement(USER_DELETE);
//			pstmt.setString(1, vo.getId());
//			pstmt.setString(2, vo.getPassword());
//			if (pstmt.executeUpdate() > 0) {
//				deleteUserFlag = 1;
//			} else {
//				deleteUserFlag = -1;
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return deleteUserFlag;
//	}
}