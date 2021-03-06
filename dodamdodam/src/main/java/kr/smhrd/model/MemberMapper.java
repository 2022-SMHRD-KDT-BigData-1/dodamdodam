package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	public void joinInsert(MemberVO vo);

	public List<MemberVO> memberList();

	public MemberVO idCheck(String m_id);

	public MemberVO loginSelect(MemberVO vo);

	public void memberUpdate(MemberVO vo);
}
