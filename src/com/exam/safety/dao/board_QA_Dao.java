package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.board_QA_DTO;

/*

CREATE TABLE BOARD_QA(
    QA_BNO NUMBER(10),
    QA_ID VARCHAR2(30) PRIMARY KEY,
    QA_TITLE VARCHAR2(50),
    QA_INQUIRY VARCHAR2(30),
    QA_DATE DATE,
    QA_CONTENTS VARCHAR2(2000),
    QA_EMAIL VARCHAR2(200),
    QA_IMG VARCHAR2(100),
    QA_IP VARCHAR2(16),
    QA_STATUS NUMBER(2),
    QA_HITS NUMBER(5));

CREATE SEQUENCE BOARD_QA_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE
NOCACHE;

*/


public class board_QA_Dao {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public board_QA_Dao() {
		conn = OracleXEConnection.getInstance().getConnection();
	} // 생성자 end


	// 데이터 생성
	public void QA_addData(board_QA_DTO qa_vo) {
		sb.setLength(0);
		sb.append("insert into board_qa ");
		sb.append("values (board_qa_seq.nextval, ?, ?, ?, sysdate, ?, ?, ?, ?, 0, 0, ?) ");

		try {
			ps = conn.prepareStatement(sb.toString());
			ps.setString(1, qa_vo.getQa_id());
			ps.setString(2, qa_vo.getQa_title());
			ps.setString(3, qa_vo.getQa_inquiry());
			ps.setString(4, qa_vo.getQa_contents());
			ps.setString(5, qa_vo.getQa_email());
			ps.setString(6, qa_vo.getQa_img());
			ps.setString(7, qa_vo.getQa_ip());
			ps.setInt(8, qa_vo.getQa_e_st());

			ps.executeUpdate();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // QA_addData() end

	// 전체 데이터 조회
	public ArrayList<board_QA_DTO> getAllData(int startNo, int endNo, String sel) {
		ArrayList<board_QA_DTO> list = new ArrayList<board_QA_DTO>();


		try {
			if(sel == null) {
				sb.setLength(0);
				sb.append("select * ");
				sb.append("from (select rownum rn, qa_bno, qa_id, qa_title, qa_inquiry, qa_date, qa_contents, qa_email, qa_img, qa_ip, qa_status, qa_hits, qa_e_st ");
				sb.append("from (select * from board_qa ");
				sb.append("order by qa_bno desc) ");
				sb.append("where rownum <= ?) ");
				sb.append("where rn >= ? ");

				ps = conn.prepareStatement(sb.toString());
				ps.setInt(1, endNo);
				ps.setInt(2, startNo);

			}else {
				sb.setLength(0);
				sb.append("select * ");
				sb.append("from (select rownum rn, qa_bno, qa_id, qa_title, qa_inquiry, qa_date, qa_contents, qa_email, qa_img, qa_ip, qa_status, qa_hits, qa_e_st ");
				sb.append("from (select * from board_qa ");
				sb.append("where qa_title like ? ");
				sb.append("or qa_contents like ? ");
				sb.append("or qa_inquiry like ? ");
				sb.append("order by qa_bno desc) ");
				sb.append("where rownum <= ?) ");
				sb.append("where rn >= ? ");

				ps = conn.prepareStatement(sb.toString());
				ps.setString(1, "%" + sel + "%");
				ps.setString(2, "%" + sel + "%");
				ps.setString(3, "%" + sel + "%");
				ps.setInt(4, endNo);
				ps.setInt(5, startNo);

			}



			rs = ps.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt("qa_bno");
				String id = rs.getString("qa_id");
				String title = rs.getString("qa_title");
				String inquiry = rs.getString("qa_inquiry");
				String date = rs.getString("qa_date");
				String contents = rs.getString("qa_contents");
				String email = rs.getString("qa_email");
				String img = rs.getString("qa_img");
				String ip = rs.getString("qa_ip");
				int status = rs.getInt("qa_status");
				int hits = rs.getInt("qa_hits");
				int e_st = rs.getInt("qa_e_st");

				board_QA_DTO vo = new board_QA_DTO(bno, id, title, inquiry, date, contents, email, img, ip, status, hits, e_st);

				list.add(vo);

			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	} // getAllData(startNo, endNo) end

	// 총 게시물 파악 메소드
		public int getTotalCount() {
			sb.setLength(0);
			sb.append("select count(*) cnt from board_qa ");		// 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함

			int cnt = 0;

			try {
				ps = conn.prepareStatement(sb.toString());

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

		public int getSelCount(String sel) {
			sb.setLength(0);
			sb.append("select count(*) cnt from board_qa "); // 테이블에 없는 컬럼 값이기 때문에 별칭을 달아야함
			sb.append("where qa_title like ? ");
			sb.append("or qa_contents like ? ");
			sb.append("or qa_inquiry like ? ");

			int cnt = 0;

			try {
				ps = conn.prepareStatement(sb.toString());

				ps.setString(1, "%" + sel + "%");
				ps.setString(2, "%" + sel + "%");
				ps.setString(3, "%" + sel + "%");

				rs = ps.executeQuery();

				rs.next();

				// cnt = rs.getInt(1); // X 안됨
				cnt = rs.getInt("cnt"); // 별칭으로 선언해야함

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return cnt;
		}// getTotalCount() end


		// 제목+내용 으로 검색
//		public ArrayList<board_QA_VO> selectData(String sel) {
//			ArrayList<board_QA_VO> list = new ArrayList<board_QA_VO>();
//			sb.setLength(0);
//			sb.append("select qa_bno, qa_id, qa_title, qa_inquiry, qa_date, qa_contents, qa_email, qa_img, qa_ip, qa_status, qa_hits ");
//			sb.append("from board_qa ");
//			sb.append("where qa_title like ? ");
//			sb.append("or qa_contents like ? ");
//			sb.append("order by qa_bno desc ");
//
//			try {
//				ps = conn.prepareStatement(sb.toString());
//				ps.setString(1, "%"+sel+"%");
//				ps.setString(2, "%"+sel+"%");
//
//				rs = ps.executeQuery();
//
//				while (rs.next()) {
//					int bno = rs.getInt("qa_bno");
//					String id = rs.getString("qa_id");
//					String title = rs.getString("qa_title");
//					String inquiry = rs.getString("qa_inquiry");
//					String date = rs.getString("qa_date");
//					String contents = rs.getString("qa_contents");
//					String email = rs.getString("qa_email");
//					String img = rs.getString("qa_img");
//					String ip = rs.getString("qa_ip");
//					int status = rs.getInt("qa_status");
//					int hits = rs.getInt("qa_hits");
//
//					board_QA_VO vo = new board_QA_VO(bno, id, title, inquiry, date, contents, email, img, ip, status, hits);
//
//					list.add(vo);
//
//				}
//			} catch (SQLException e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			}
//			return list;

//		} // selectData() end

		// 데이터 한건 조회 메소드 - 게시글 번호 - getDate()
		public board_QA_DTO getData(int bno) {
			sb.setLength(0);
			sb.append("select * from board_qa ");
			sb.append("where qa_bno=? ");

			board_QA_DTO vo = null;

			try {
				ps = conn.prepareStatement(sb.toString());
				ps.setInt(1, bno);

				rs = ps.executeQuery();
				rs.next();

				String id = rs.getString("qa_id");
				String title = rs.getString("qa_title");
				String inquiry = rs.getString("qa_inquiry");
				String date = rs.getString("qa_date");
				String contents = rs.getString("qa_contents");
				String email = rs.getString("qa_email");
				String img = rs.getString("qa_img");
				String ip = rs.getString("qa_ip");
				int status = rs.getInt("qa_status");
				int hits = rs.getInt("qa_hits");
				int e_st = rs.getInt("qa_e_st");

				vo = new board_QA_DTO(bno, id, title, inquiry, date, contents, email, img, ip, status, hits, e_st);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
			return vo;

		} // getData() end

		// 조회수 증가
		public void raiseHits(int bno) {
			sb.setLength(0);
			sb.append("update board_qa ");
			sb.append("set qa_hits = qa_hits + 1 ");
			sb.append("where qa_bno = ? ");

			try {
				ps = conn.prepareStatement(sb.toString());

				ps.setInt(1, bno);

				ps.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		}	// raiseHits() end

		// 수정
		public void modifyData(board_QA_DTO vo) {
			sb.setLength(0);
			sb.append("update board_qa ");
			sb.append("set qa_title = ?, qa_inquiry = ?, qa_contents = ?, qa_email = ? ");
			sb.append("where qa_bno = ? ");

			try {
				ps = conn.prepareStatement(sb.toString());
				ps.setString(1, vo.getQa_title());
				ps.setString(2, vo.getQa_inquiry());
				ps.setString(3, vo.getQa_contents());
				ps.setString(4, vo.getQa_email());
				ps.setInt(5, vo.getQa_bno());

				ps.executeUpdate();


			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 게시글 삭제 메소드 - 게시글 번호 - deleteData()
		public void deleteData(int bno) {
			sb.setLength(0);
			sb.append("delete board_qa ");
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
