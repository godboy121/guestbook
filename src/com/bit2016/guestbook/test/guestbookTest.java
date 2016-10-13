package com.bit2016.guestbook.test;

import java.util.List;

import com.bit2016.guestbook.dao.guestbookDao;
import com.bit2016.guestbook.vo.guestbookVo;

public class guestbookTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//insertTest();
		deleteTest();
		//getListTest();
		

	}
	public static void insertTest(){
		guestbookVo vo=new guestbookVo();
		vo.setName("남달우");
		vo.setContext("안녕하십니까 남달우입니다");
		vo.setPasswd("1234");
		vo.setDate("2016년 10월 13일");
		
		guestbookDao dao=new guestbookDao();
		dao.insert(vo);
	}
	public static void getListTest(){
		guestbookDao dao=new guestbookDao();
		List<guestbookVo> list=dao.getList();
		for(guestbookVo vo:list)
			System.out.println(vo);
		
	}
	public static void deleteTest(){
		guestbookDao dao=new guestbookDao();
		dao.delete(1);
	}

}
