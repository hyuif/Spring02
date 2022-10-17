package mapperInterface;

import java.util.List;

import javax.naming.directory.SearchControls;

import org.apache.ibatis.annotations.Select;

import criTest.SearchCriteria;
import vo.MemberVO;

public interface MemberMapper {
	@Select("select * from member")
	List<MemberVO> selectList2();
	
	
	List<MemberVO> searchList(SearchCriteria cri);
	int searchCount(SearchCriteria cri);
	
	// ** selectList
	List<MemberVO> selectList();
	// ** selectOne
	MemberVO selectOne(MemberVO vo);
	// ** Join -> Insert
	int insert(MemberVO vo);
	// ** Update
	int update(MemberVO vo);
	// ** Delete
	int delete(MemberVO vo);
	
	int totalCount(MemberVO vo);

} //interface
