package com.exam.safety.project;

import java.security.MessageDigest;

public class SHA256 {
	public static String getSHA256(String input) { //이메일을 받아서 hex값을 돌려줌
		StringBuffer result = new StringBuffer();
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");  //사용자가 입력한 값 SHA로 알고리즘 만들수 있도록
			byte[] salt = "	Hello! This is Salt.".getBytes();		//솔트값 안전하게 보안
			digest.reset();
			digest.update(salt); //솔트값 적용
			byte[] chars = digest.digest(input.getBytes("UTF-8"));	//해시로 적용한값은 담아주고
			for(int i=0; i<chars.length; i++) {
				String hex = Integer.toHexString(0xff & chars[i]);  //hex값과 해당 인덱스
				if(hex.length() ==1) result.append("0"); //0일경우 하나 붙여서
				result.append(hex);	//차근차근 담아서
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();	//해당 핵스값을 
	}
}
