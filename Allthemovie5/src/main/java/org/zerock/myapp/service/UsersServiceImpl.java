package org.zerock.myapp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.myapp.domain.UsersDTO;
import org.zerock.myapp.mapper.UsersMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;


@Service
@Log4j2
@AllArgsConstructor
public class UsersServiceImpl implements UsersService {

//	@Autowired
	private UsersMapper usersMapper;

	
	@Override
	public List<UsersDTO> list() {
		
		return usersMapper.list();
	}

	@Override
	public int register(UsersDTO usersDTO) {
		return usersMapper.insert(usersDTO);
	}

	@Override
	public int modify(UsersDTO usersDTO) {
		return usersMapper.update(usersDTO);
	}


	@Override
	public int remove(UsersDTO usersDTO) {
		
		return usersMapper.delete(usersDTO);
	}

	@Override
	public UsersDTO login(UsersDTO usersDTO) {
		
		return usersMapper.login(usersDTO);
	}

	@Override
	public int updateprofile(UsersDTO usersDTO) {
		return usersMapper.updateprofile(usersDTO);
	}

}
