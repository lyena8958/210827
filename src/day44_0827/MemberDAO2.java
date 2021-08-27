package day44_0827;

import java.util.ArrayList;

public class MemberDAO2 {
	ArrayList<MemberVO> datas = new ArrayList<MemberVO>();

	public ArrayList<MemberVO> getDatas() {
		return datas;
	}
	
	public void addMember(MemberVO vo) {
		datas.add(vo);
		
	}
	public int login(MemberVO vo) {
		
		for(MemberVO2 data: datas) {
			if(data.getUserID().equals(vo.getUserID())) {
				if(data.getUserPW().equals(vo.getUserPW())) {
					return 1;
				}
				return 0;
			}
		}
		
		return -1;
		
	}
	// -1랑 0은 비정상종료
}
