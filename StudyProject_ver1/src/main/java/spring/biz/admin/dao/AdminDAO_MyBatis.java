package spring.biz.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import spring.biz.studyroom.vo.StudyRoomVO;
import spring.biz.user.vo.UserVO;

@Repository("adminmybatis")
public class AdminDAO_MyBatis implements AdminDAO{

	//@Autowired
	@Inject
	SqlSession sqlSession=null;
	
	
	public List<UserVO> getUserList(){
		System.out.println("AdminDAO_MyBatis 연동");
		return sqlSession.selectList("admin.userlist");
	}
	
	public List<StudyRoomVO> getStudyRoomList(){
		System.out.println("AdminDAO_MyBatis 연동");
		return sqlSession.selectList("admin.studyroomlist");
	}

	public List<UserVO> searchUser (String condition, String keyword) {
	    HashMap<String , String> map = new HashMap<String, String>();
	    map.put(condition,keyword);
		return sqlSession.selectList("admin.searchuser",map);
	}
	
	public List<StudyRoomVO> searchStudyRoom (String condition, String keyword) {
	    HashMap<String , String> map = new HashMap<String, String>();
	    map.put(condition,keyword);
		return sqlSession.selectList("admin.searchstudyroom",map);
	}
}
