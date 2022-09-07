package org.zerock.myapp.mapper;

import java.util.List;

import org.zerock.myapp.domain.UsersDTO;


public interface UsersMapper {

	public List<UsersDTO> list();
	
	//가입	
	public int insert(UsersDTO usersDTO);	
	//수정
	public int update(UsersDTO usersDTO);
	//탈퇴
	public int delete(UsersDTO usersDTO);
	//프로필수정
	public int updateprofile(UsersDTO usersDTO);
	//로그인
	public UsersDTO login(UsersDTO usersDTO);
} // end interface

