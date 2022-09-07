package org.zerock.myapp.service;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.zerock.myapp.domain.UsersDTO;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@NoArgsConstructor
//@RunWith(SpringJUnit4ClassRunner.class)
@ExtendWith(SpringExtension.class)

@ContextConfiguration(locations= {
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UsersServiceTests {

	 @Setter(onMethod_ = @Autowired )
	 private UsersService service;
	 
	 @Test//생성
	 public void testRegister() {
		 UsersDTO users = new UsersDTO();
		 
		 users.setUser_id("새로운 아이디");
		 users.setName("새로운 이름");
		 users.setPassword("새로운 비번");
		 users.setPhonenumber(0101010101);
		 
		 log.info(service.register(users));
		 log.info(service.list());

	 }
	 
	 @Test//목록
	 public void testList() {
		 log.info(service.list());
//		 service.list().forEach(e -> log.info(e));
	 }
	 
	 @Test//삭제
	 public void testRemove() {
		 UsersDTO usersVO = new UsersDTO();
		 usersVO.setUser_id("vvv@vvv");
		 usersVO.setPassword("vvvv");
		 service.remove(usersVO);
		 
		 log.info(service.list());
		 
	 }
	 
	 @Test//수정
	 public void testModify() {
		 UsersDTO users = new UsersDTO();
		 
		 users.setUser_id("새로운 아이디"); //수정할 pk
		 users.setName("수정 이름22");
		 users.setPassword("수정 비번22");
		 users.setPhonenumber(0101010101);
		 
		 log.info(service.modify(users));
		 log.info(service.list());
	 }
	 
	 @Test//로그인
	 public void testLogin() {
		 UsersDTO users = new UsersDTO();
		 
		 users.setUser_id("새로운 아이디");
		 users.setPassword("수정 비번22");
		 service.login(users);
		 
		 log.info(service.login(users));

	 }
}
