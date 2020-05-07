package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.Join1_VO;
import com.exam.safety.dto.Join2_VO;

public class Join2_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public Join2_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}// 생성자 end

	// 멤버추가
	public void addData(Join2_VO vo) {
		sb.setLength(0);
		sb.append("insert into ORGANIZATION ");
		sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getLinumber());
			pstmt.setString(2, vo.getMan());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getId());
			pstmt.setString(5, vo.getPw());
			pstmt.setInt(6, vo.getPhone());
			pstmt.setString(7, vo.getAddr());
			pstmt.setInt(8, vo.getPcode());
			pstmt.setString(9, vo.getEmail());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// addData() end
	// 아이디 중복 체크
	public int joinCheck(String userID) {
		int rst = 0;
		sb.setLength(0);
		sb.append("select * from ORGANIZATION ");
		sb.append("where OR_ID = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			// 중복되는 아이디 있으면 1
			if (rs.next()) {
				rst = 1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			return rst;
		}

	}// joinCheck end
		// 존재하는 회원인지 여부를 확인하는 메소드 - (id,email)

	public boolean isExist(String id, String email) {
		sb.setLength(0);
		sb.append("select * from ORGANIZATION ");
		sb.append("where OR_ID  = ? and OR_EMAIL  = ? ");

		boolean isOk = false;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			isOk = rs.next(); // 한줄이니까 rs.next로 받음
								// 있는지 없는지만 필요(존재여부만 파악)뒤 리턴
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isOk;
	}// isExit() end

	// 회원 정보 변경
	// 회원정보변경은 사용자가 값을 집어넣게 해준다. + 돌려줄것 없음.
	public void updateData(Join2_VO vo) {
		sb.setLength(0);
		sb.append("update ORGANIZATION ");
		sb.append("set OR_LINUMBER  =?, OR_MAN  =?, OR_NAME  =?, OR_PW  =?, OR_PHONE  =?  ");
		sb.append("where OR_EMAIL   = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getLinumber()); // ?에 값을 set해준다. vo에서 get해와서
			pstmt.setString(2, vo.getMan());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getPw());
			pstmt.setInt(5, vo.getPhone());
			pstmt.setString(6, vo.getEmail());


			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// updatedata() end
		// 전체 게시글 조회 - getAllData()

	public Join2_VO getAllData(String id) {
		Join2_VO vo = null;

		sb.setLength(0);
		sb.append("select * from ORGANIZATION ");
		sb.append("where OR_ID = ? ");

		try {

			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			pstmt.setString(1, id);

		rs.next();

				String linum = rs.getString(1);
				String man = rs.getString(2);
				String name = rs.getString(3);
				String pw = rs.getString(5);
				int phone = rs.getInt(6);
				String addr = rs.getString(7);
				int pcode = rs.getInt(8);
				String email = rs.getString(9);


			 vo = new Join2_VO(linum, man, name, id, pw, phone, addr, pcode, email);



		}catch(

	Exception e)
	{
			// TODO: handle exception
		}return vo;
}// getAllData() end

}
