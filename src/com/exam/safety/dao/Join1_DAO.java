package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.Join1_VO;

public class Join1_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public Join1_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}// �깮�꽦�옄 end

//硫ㅻ쾭異붽�
	public void addData(Join1_VO vo) {
		sb.setLength(0);
		sb.append("insert into ORDINARY_PEOPLE ");
		sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPw());
			pstmt.setString(4, vo.getBdate());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getAddr());
			pstmt.setInt(7, vo.getPcode());
			pstmt.setInt(8, vo.getGender());
			pstmt.setInt(9, vo.getPhone());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//addData() end

//�븘�씠�뵒 �꽔�쑝硫� �씠硫붿씪 鍮쇱＜湲�
	public String getUserId(String id) {
		sb.setLength(0);
		sb.append("select OP_EMAIL from ORDINARY_PEOPLE ");
		sb.append("where OP_ID = ? ");

		Join1_VO vo = null;
		String emailCk = "";

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			String name = rs.getString(2);
			String pw = rs.getString(3);
			String bdate = rs.getString(4);
			String email = rs.getString(5);
			String addr = rs.getString(6);
			int gender = rs.getInt(7);

			emailCk = email;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return emailCk;

	}// isExistById();


	// �븘�씠�뵒 以묐났 泥댄겕
	public int joinCheck(String userID) {
		int rst = 0;
		sb.setLength(0);
		sb.append("select * from ORDINARY_PEOPLE ");
		sb.append("where OP_ID = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			// 以묐났�릺�뒗 �븘�씠�뵒 �엳�쑝硫� 1
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

	// 議댁옱�븯�뒗 �쉶�썝�씤吏� �뿬遺�瑜� �솗�씤�븯�뒗 硫붿냼�뱶 - (id,email)
	public boolean isExist(String id, String email) {
		sb.setLength(0);
		sb.append("select * from ORDINARY_PEOPLE ");
		sb.append("where OP_ID = ? and OP_EMAIL = ? ");

		boolean isOk = false;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			isOk = rs.next(); // �븳以꾩씠�땲源� rs.next濡� 諛쏆쓬
								// �엳�뒗吏� �뾾�뒗吏�留� �븘�슂(議댁옱�뿬遺�留� �뙆�븙)�뮘 由ы꽩
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isOk;
	}// isExit() end

	  public boolean isExist_id(String id, String pw) {
	      sb.setLength(0);
	      sb.append("select * from ORDINARY_PEOPLE ");
	      sb.append("where OP_ID = ? and OP_PW = ? ");

	      boolean isOk = false;

	      try {
	      pstmt = conn.prepareStatement(sb.toString());
	      pstmt.setString(1, id);
	      pstmt.setString(2, pw);

	      rs = pstmt.executeQuery();

	      isOk = rs.next();

	   } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	   }
	      return isOk;

	   }//end of isExist   濡쒓렇�씤 �떆耳쒖＜�뒗 硫붿냼�뱶
	  public boolean isExist_admin(String id, String pw) {
	      sb.setLength(0);
	      sb.append("select * from ORDINARY_ADMIN ");
	      sb.append("where OP_ID = ? and OP_PW = ? ");

	      boolean isOk = false;

	      try {
	      pstmt = conn.prepareStatement(sb.toString());
	      pstmt.setString(1, id);
	      pstmt.setString(2, pw);

	      rs = pstmt.executeQuery();

	      isOk = rs.next();

	   } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	   }
	      return isOk;

	   }//end of isExist   濡쒓렇�씤 �떆耳쒖＜�뒗 硫붿냼�뱶


	// �쉶�썝 �젙蹂� 蹂�寃�
	// �쉶�썝�젙蹂대�寃쎌� �궗�슜�옄媛� 媛믪쓣 吏묒뼱�꽔寃� �빐以��떎. + �룎�젮以꾧쾬 �뾾�쓬.
	public void updateData(Join1_VO vo) {
		sb.setLength(0);
		sb.append("update ORDINARY_PEOPLE ");
		sb.append("set OP_NAME  =?, OP_PW =?, OP_BDATE =?,  OP_PHONE =? ");
		sb.append("where OP_EMAIL  = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getName()); // ?�뿉 媛믪쓣 set�빐以��떎. vo�뿉�꽌 get�빐���꽌
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getBdate());
			pstmt.setInt(4, vo.getPhone());
			pstmt.setString(5, vo.getEmail());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// updatedata() end

	// �쟾泥� 寃뚯떆湲� 議고쉶 - getAllData()
		public Join1_VO getAllData(String id) {


			sb.setLength(0);
			sb.append("select * from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");

			Join1_VO vo = null;
			try {

				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, id);

				rs = pstmt.executeQuery();
				rs.next();

					String name = rs.getString(2);
					String pw = rs.getString(3);
					String date = rs.getString(4);
					String email = rs.getString(5);
					String addr = rs.getString(6);
					int pcode = rs.getInt(7);
					int gender = rs.getInt(8);
					int phone = rs.getInt(9);


					vo = new Join1_VO(id, name, pw, email, addr, pcode, gender, phone);



			} catch (Exception e) {
				// TODO: handle exception
			}
			return vo;
		}// getAllData() end
		
		public boolean isExist_findID(String name, String hp) {
			sb.setLength(0);
			sb.append("select * from ORDINARY_PEOPLE ");
			sb.append("where OP_NAME  =? and OP_PHONE =?  ");

			boolean isOk = false;

			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, name);
				pstmt.setString(2, hp);
				rs = pstmt.executeQuery();

				isOk = rs.next(); // 
									// 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return isOk;
		}// isExit() end
		
		public boolean isExist_findID_email(String name, String email) {
			sb.setLength(0);
			sb.append("select * from ORDINARY_PEOPLE ");
			sb.append("where OP_NAME  =? and OP_EMAIL = ? ");

			boolean isOk = false;

			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, name);
				pstmt.setString(2, email);
				rs = pstmt.executeQuery();

				isOk = rs.next(); // �븳以꾩씠�땲源� rs.next濡� 諛쏆쓬
									// �엳�뒗吏� �뾾�뒗吏�留� �븘�슂(議댁옱�뿬遺�留� �뙆�븙)�뮘 由ы꽩
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return isOk;
		}// isExit() end
		
		public String getUser_ID(String name,String hp) {
			sb.setLength(0);
			sb.append("select OP_ID from ORDINARY_PEOPLE ");
			sb.append("where OP_NAME  =? and OP_PHONE =? ");

			Join1_VO vo = null;
			String emailCk = "";

			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, name);
				pstmt.setString(2, hp);

				rs = pstmt.executeQuery();
				
				String pw = rs.getString(3);
				String date = rs.getString(4);
				String email = rs.getString(5);
				String addr = rs.getString(6);
				int pcode = rs.getInt(7);
				int gender = rs.getInt(8);
				int phone = rs.getInt(9);

				emailCk = email;

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return emailCk;

		}// isExistById();
		public ArrayList<Join1_VO> getAllData1(String id) {
			ArrayList<Join1_VO> list = new ArrayList<Join1_VO>();

			sb.setLength(0);
			sb.append("select * from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");

			Join1_VO vo = null;
			try {

				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, id);

				rs = pstmt.executeQuery();
				rs.next();

					String name = rs.getString(2);
					String pw = rs.getString(3);
					String date = rs.getString(4);
					String email = rs.getString(5);
					String addr = rs.getString(6);
					int pcode = rs.getInt(7);
					int gender = rs.getInt(8);
					int phone = rs.getInt(9);


					vo = new Join1_VO(id, name, pw, email, addr, pcode, gender, phone);
					list.add(vo);


			} catch (Exception e) {
				// TODO: handle exception
			}
			return list;
		}
		
		public String pwCheck(String userID) {
			int rst = 0;
			sb.setLength(0);
			sb.append("select OP_PW from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");
			String pw = "";
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, userID);
			
				rs = pstmt.executeQuery();
				rs.next();
				
				pw = rs.getString("OP_PW");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			} finally {
			}

			return pw;
		}
		

}
