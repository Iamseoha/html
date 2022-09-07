package org.zerock.myapp.service;

import java.util.List;

import org.zerock.myapp.domain.UsersDTO;


public interface UsersService {

	public List<UsersDTO> list();			//리스트

	public int register(UsersDTO usersDTO);		//가입(생성)
	
	public int modify(UsersDTO usersDTO);		//수정
	
	public int remove(UsersDTO usersDTO);	//삭제
	
	public int updateprofile(UsersDTO usersDTO);
	
	public UsersDTO login(UsersDTO usersDTO);	
} // end interface
