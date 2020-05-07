package com.exam.safety.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.CampaignVO;



public class CampaignDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public CampaignDAO() {
		// TODO Auto-generated constructor stub
		conn = OracleXEConnection.getInstance().getConnection();
		System.out.println(conn);
	}//생성자 end

	public int addData(CampaignVO vo) {
		sb.setLength(0);
		sb.append("insert into campaign ");
		sb.append("values (campaign_bno_seq.nextval, ?, ?, ?, ? ) ");

		int result = -1;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getCamimg());
			pstmt.setString(2, vo.getCamlink());
			pstmt.setString(3, vo.getCamtitle());
			pstmt.setString(4, vo.getCamcontents());


			result = pstmt.executeUpdate();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}//addData() end

	//상품정보를 전체 조회하는 메소드 - getAllData()
	public ArrayList<CampaignVO> getAllData(int startNo, int endNo){
		ArrayList<CampaignVO> list = new ArrayList<CampaignVO>();


		sb.setLength(0);
		sb.append("SELECT * ");
		sb.append("FROM (SELECT ROWNUM RN, BNO, CAMIMG, CAMLINK, CAMTITLE, CAMCONTENTS ");
		sb.append("FROM (SELECT * FROM CAMPAIGN)");
		sb.append("WHERE ROWNUM <= ? ) ");
		sb.append("WHERE RN >= ? ");



		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, endNo);
			pstmt.setInt(2, startNo);

			rs = pstmt.executeQuery();

			while(rs.next()) {
				int bno = rs.getInt("bno");
				String camimg = rs.getString("camimg");
				String camlink = rs.getString("camlink");
				String camtitle = rs.getString("camtitle");
				String camcontents = rs.getString("camcontents");


				CampaignVO vo = new CampaignVO(bno, camimg, camlink, camtitle, camcontents);

				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}//getAllData(startNo, end No) end

	//총 게시물 파악 메소드
	public int getTotalCount() {
		sb.setLength(0);
		sb.append("select count(*) cnt ");
		sb.append("from campaign ");

		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(sb.toString());

			rs = pstmt.executeQuery();

			rs.next();

			//cnt = rs.getInt(1);  (X)
			cnt = rs.getInt("cnt"); //별칭 가져오기

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}//getTotalCount() end

	public CampaignVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from campaign ");
		sb.append("where bno = ? ");

		CampaignVO vo = null;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			rs = pstmt.executeQuery();
			rs.next();

			String camimg = rs.getString("camimg");
			String camlink = rs.getString("camlink");
			String camtitle = rs.getString("camtitle");
			String camcontents = rs.getString("camcontents");

			vo = new CampaignVO(bno, camimg, camlink, camtitle, camcontents);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}//getData() end

	public void modifyData(CampaignVO vo) {
		sb.setLength(0);
		sb.append("update campaign ");
		sb.append("set camimg = ?, camlink = ? , camtitle = ? , camcontents = ? ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getCamimg());
			pstmt.setString(2, vo.getCamlink());
			pstmt.setString(3, vo.getCamtitle());
			pstmt.setString(4, vo.getCamcontents());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}//modifyData() end

	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete campaign ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}//deleteData() end



}
