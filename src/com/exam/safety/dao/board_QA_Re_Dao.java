package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.board_QA_Re_VO;

public class board_QA_Re_Dao {

	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public board_QA_Re_Dao() {
		conn = OracleXEConnection.getInstance().getConnection();
	}

	// 댓글 입력 메소드
	public void insertReply(board_QA_Re_VO vo) {
//		insert into reboard
//		values (댓글번호, 아이디, 댓글내용, 날짜, 게시글 번호 )
		sb.setLength(0);
		sb.append("insert into board_qa_re ");
		sb.append("values (board_qa_re_seq.nextval, ?, ?, ?, sysdate, ?) ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, vo.getQa_re_id());
			ps.setString(2, vo.getQa_re_response());
			ps.setString(3, vo.getQa_re_contents());
			ps.setInt(4, vo.getQa_re_ref());

			ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // insertReply()

	// 댓글 조회 메소드 - 전체 조회(원글번호별)
	public ArrayList<board_QA_Re_VO> getAllReply(int bno) {
		ArrayList<board_QA_Re_VO> list = new ArrayList<board_QA_Re_VO>();

		sb.setLength(0);
		sb.append("select * from board_qa_re ");
		sb.append("where qa_re_ref = ? ");
		sb.append("order by qa_re_bno desc ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);

			rs = ps.executeQuery();

			while (rs.next()) {
				board_QA_Re_VO vo = new board_QA_Re_VO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6));
				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	public int getReplyCount(int bno) {
		sb.setLength(0);
		sb.append("select count(*) cnt from board_qa_re ");		// 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함
		sb.append("where qa_re_ref = ? ");

		int cnt = 0;

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);

			rs = ps.executeQuery();

			rs.next();

			// cnt = rs.getInt(1);   // X 안됨
			cnt = rs.getInt("cnt");  // 별칭으로 선언해야함


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return cnt;
	}// getTotalCount() end

	// 댓글 조회 메소드 - 전체 조회
	public ArrayList<board_QA_Re_VO> getAllReply() {
		ArrayList<board_QA_Re_VO> list = new ArrayList<board_QA_Re_VO>();

		sb.setLength(0);
		sb.append("select * from board_qa_re ");
		sb.append("where qa_re_ref = ? ");
		sb.append("order by qa_re_bno desc ");

		try {
			ps = conn.prepareStatement(sb.toString());

			rs = ps.executeQuery();

			while (rs.next()) {
				board_QA_Re_VO vo = new board_QA_Re_VO(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getInt(6));
				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	public void getStatus(int bno) {
		sb.setLength(0);
		sb.append("update board_qa ");
		sb.append("set qa_status = 1 ");
		sb.append("where qa_bno = ? ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setInt(1, bno);

			ps.executeUpdate();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}



}
