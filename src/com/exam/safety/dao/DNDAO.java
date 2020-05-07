package com.exam.safety.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dto.DNVO;
import com.sun.net.httpserver.Authenticator.Result;


public class DNDAO {

   StringBuffer sb = new StringBuffer();

   ResultSet rs = null;
   PreparedStatement ps = null;
   Connection conn = null;

   private PreparedStatement pstmt;


   public DNDAO() {
      // TODO Auto-generated constructor stub
      conn = OracleXEConnection.getInstance().getConnection();
   }

   public void addData(DNVO vo) {
      sb.setLength(0);
      sb.append("insert into CORPORATION ");
      sb.append("values (?,?,?,?,?,?,?)  ");

      try {
         pstmt = conn.prepareStatement(sb.toString());
         pstmt.setString(1, vo.getCr_name());
         pstmt.setString(2, vo.getCr_number());
         pstmt.setString(3, vo.getCr_man_name());
         pstmt.setString(4, vo.getCr_man_phone_number());
         pstmt.setInt(5, vo.getPrice());
         pstmt.setString(6, vo.getBox());
         pstmt.setString(7, vo.getBox2());


         pstmt.executeUpdate();
         }catch (SQLException e) {
            e.printStackTrace();
         }

   }


   public int getsum() {
	   sb.setLength(0);
	   sb.append("select sum(price) as cons from corporation ");


	   int ton = 0;

	   try {
		ps = conn.prepareStatement(sb.toString());
		rs = ps.executeQuery();

		rs.next();

		//cnt = rs.getInt(1);
		ton = rs.getInt("cons");

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return ton;


   }//end

   public int getpeople() {
	   sb.setLength(0);
	   sb.append("select count(price) as con from corporation ");


	   int con = 0;

	   try {
		ps = conn.prepareStatement(sb.toString());
		rs = ps.executeQuery();

		rs.next();

		//cnt = rs.getInt(1);
		con = rs.getInt("con");

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return con;

   }
//   =====================================후원한 기업들의 목록
   //전체 조회 -
   public ArrayList<DNVO> getEverthing() {
      ArrayList<DNVO> list = new ArrayList<DNVO>();

      sb.setLength(0);
      sb.append("select * from corporation ");
      //sb.append("order by desc ");

      try {
         ps = conn.prepareStatement(sb.toString());
         rs = ps.executeQuery();

         while(rs.next()) {
            String cr_name = rs.getString(1);
            String cr_number = rs.getString(2);
            String cr_man_name = rs.getString(3);
            String cr_man_phone_number = rs.getString(4);
            int price = rs.getInt(5);
            String box = rs.getString(6);
			String box2 = rs.getString(7);

            DNVO vo = new DNVO(cr_name, cr_number, cr_man_name, cr_man_phone_number, price, box, box2);

            list.add(vo);
         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return list;



   }
   // getEverthing end



}