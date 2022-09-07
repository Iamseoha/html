package org.zerock.myapp.mapper;
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
public class UsersMapperTests {

 @Setter(onMethod_ = @Autowired )
 private UsersMapper mapper;
 
 @Test
 public void testList() {
//	 mapper.list().forEach(board -> log.info(board));
	 log.info(mapper.list());
//	 List<UsersVO> list = this.mapper.list();
//		
//		Objects.requireNonNull(list);
//		list.forEach(log::info);
 }
 
 @Test
 public void tesInsert() {
	 UsersDTO usersVO = new UsersDTO();
	 usersVO.setUser_id("추가아이디4");
	 usersVO.setName("추가이름4");
	 usersVO.setPassword("추가비번4");
	 usersVO.setPhonenumber(888222);
	 mapper.insert(usersVO);
	 
	 log.info(usersVO);
//	 log.info(mapper.list());
 }
 
 @Test
 public void testUpdate() {
	 UsersDTO usersVO = new UsersDTO();
	 usersVO.setUser_id("추가아이디2");
	 usersVO.setName("수정이름233");
	 usersVO.setPassword("수정비번2");
	 usersVO.setPhonenumber(111);
	 mapper.update(usersVO);
	 
//	 log.info(usersVO);
	 log.info(mapper.list());
 }
 
 @Test
 public void testDelete() {
	 UsersDTO usersVO = new UsersDTO();
	 usersVO.setUser_id("vvv@vvv");
	 usersVO.setPassword("vvvv");
	 mapper.delete(usersVO);
	 
	 log.info(mapper.list());

 }
 
 @Test//로그인
 public void testLogin() {
	 UsersDTO users = new UsersDTO();
	 
	 users.setUser_id("새로운 아이디"); //수정할 pk
	 users.setPassword("수정 비번22");
	 
	 mapper.login(users);
	 System.out.println("결과 값: " + mapper.login(users));
 }
}