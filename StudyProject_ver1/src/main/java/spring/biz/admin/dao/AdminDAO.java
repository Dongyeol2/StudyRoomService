package spring.biz.admin.dao;

import java.util.List;

import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.vo.UserVO;

public interface AdminDAO {
	List<UserVO> getUserList();
	
	List<StudyRoomVO> getStudyRoomList();
	/*
	 * UserVO login(String id,String pw);
	 * 
	 * int addUser(UserVO user);
	 * 
	 * UserVO getUser(String userid);
	 * 
	 * List<UserVO> getUserList();
	 * 
	 * int updateUser(UserVO user);
	 * 
	 * int removeUser(String userid);
	 * 
	 * List<UserVO> searchUser(String condition,String keyword);
	 */
}
