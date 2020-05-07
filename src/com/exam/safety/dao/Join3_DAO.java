package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.Join2_VO;
import com.exam.safety.dto.Join3_VO;

public class Join3_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public Join3_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}// 생성자 end

	// 멤버추가
	public void addData(Join3_VO vo) {
		sb.setLength(0);
		sb.append("insert into CORPORATION ");
		sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getNumber());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getId());
			pstmt.setString(4, vo.getPw());
			pstmt.setInt(5, vo.getPhone());
			pstmt.setString(6, vo.getAddr());
			pstmt.setInt(7, vo.getPcode());
			pstmt.setString(8, vo.getMan());
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
		sb.append("select * from CORPORATION ");
		sb.append("where CR_ID = ? ");

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
		sb.append("select * from CORPORATION ");
		sb.append("where CR_ID   = ? and CR_EMAIL  = ? ");

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
	public void updateData(Join3_VO vo) {
		sb.setLength(0);
		sb.append("update CORPORATION ");
		sb.append("set CR_NUMBER  =?, CR_NAME =?, CR_PW  =?, CR_PHONE  =?, CR_MAN  =? ");
		sb.append("where CR_EMAIL  = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getNumber()); // ?에 값을 set해준다. vo에서 get해와서
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPw());
			pstmt.setInt(4, vo.getPhone());
			pstmt.setString(5, vo.getMan());
			pstmt.setString(6, vo.getEmail());


			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// updatedata() end
		// 전체 게시글 조회 - getAllData()

	public Join3_VO getAllData(String id) {
			Join3_VO vo = null;

				sb.setLength(0);
				sb.append("select * from CORPORATION ");
				sb.append("where CR_ID  = ? ");


				try {

					pstmt = conn.prepareStatement(sb.toString());
					pstmt.setString(1, id);

					rs = pstmt.executeQuery();

						rs.next();

						String num = rs.getString(1);
						String name = rs.getString(2);

						String pw = rs.getString(4);
						int phone = rs.getInt(5);
						String addr = rs.getString(6);
						int pcode = rs.getInt(7);
						String man = rs.getString(8);
						String email = rs.getString(9);


					 vo = new Join3_VO(num, name, id, pw, phone, addr, pcode, man, email);



				}catch(

	Exception e)
	{
					// TODO: handle exception
				}return vo;
}// getAllData() end

}
