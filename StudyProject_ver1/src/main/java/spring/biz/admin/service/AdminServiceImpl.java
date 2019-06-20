package spring.biz.admin.service;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import spring.biz.admin.dao.AdminDAO;
import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.dao.UserDAO;
import spring.biz.user.vo.UserVO;

@Service("adminservice")
public class AdminServiceImpl implements AdminService{
	
	//@Autowired
	//@Qualifier("jdbc")
	@Resource(name = "adminmybatis")
	AdminDAO dao;
	
	@Autowired
	ApplicationContext context;
	
	public AdminServiceImpl() {	}
	public AdminServiceImpl(AdminDAO dao) {
		this.dao = dao;
	}
	public AdminDAO getDao() {
		return dao;
	}
	public void setDao(AdminDAO dao) {
		this.dao = dao;
	}
	@Override
	public List<UserVO> getUserList() {
		return dao.getUserList();
	}
	@Override
	public List<StudyRoomVO> getStudyRoomList() {
		return dao.getStudyRoomList();
	}
	@Override
	public List<UserVO> searchUser(String condition, String keyword) {
		return dao.searchUser(condition, keyword);
	}
	@Override
	public List<StudyRoomVO> searchStudyRoom(String condition, String keyword) {
		return dao.searchStudyRoom(condition, keyword);
	}
	
	
	
	/*
	 * @Override public UserVO login(String id, String pw) { UserVO vo =
	 * dao.login(id, pw); String msg = null; if(vo != null) { msg =
	 * context.getMessage("login.success", new Object[] {id}, Locale.KOREA);
	 * 
	 * }else { msg = context.getMessage("login.fail", new Object[] {id},
	 * Locale.KOREA); } System.out.println(msg); return vo; }
	 * 
	 * @Override public int addUser(UserVO user) { return dao.addUser(user); }
	 * 
	 * @Override public UserVO getUser(String userid) { return dao.getUser(userid);
	 * }
	 * 
	 * @Override public List<UserVO> getUserList() { return dao.getUserList(); }
	 * 
	 * @Override public int updateUser(UserVO user) { return dao.updateUser(user); }
	 * 
	 * @Override public int removeUser(String userid) { return
	 * dao.removeUser(userid); }
	 * 
	 * @Override public List<UserVO> searchUser(String condition, String keyword) {
	 * return dao.searchUser(condition, keyword); }
	 */
}
