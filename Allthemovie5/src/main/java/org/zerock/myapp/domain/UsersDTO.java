package org.zerock.myapp.domain;

import lombok.Data;

@Data
//@Value
public class UsersDTO {

	private String user_id;
	private String name;
	private String password;
	private int phonenumber;
	private String profile;
}
