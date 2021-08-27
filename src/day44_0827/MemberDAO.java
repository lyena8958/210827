package day44_0827;

import java.util.ArrayList;

public class MemberDAO {
	
	ArrayList<MemberVO> datas = new ArrayList<MemberVO>();
	
	// [메서드] 회원가입 데이터 저장
	public boolean memberUpdate(MemberVO data) {
		
		// 아이디 비교(중복데이터 방지)
		if(datas.size()!=0) {
			//System.out.println("확인");
			for(MemberVO vo : datas) {
			//	System.out.println("확인 foreach");
				if(vo.getUserID().equals(data.getUserID())) {
				//	System.out.println("확인2");
					return false;
				}
			}//for종료
		}//if종료
		
		datas.add(data); // 아이디가 중복되지않았다면 데이터 저장
		return true;
		
	}
	// [메서드] 회원가입 데이터 저장
	public ArrayList<MemberVO> memberAllSelect() {
		ArrayList<MemberVO> datas = new ArrayList<MemberVO>();
		
		//저장된 데이터가없다면 null반환
		if(this.datas.size()==0) {
			return null;
		}
		
		//있다면 AL 데이터 저장 후 반환
		for(MemberVO vo : this.datas) {
			MemberVO data = new MemberVO();
			data.setUserID(vo.getUserID());
			data.setUserName(vo.getUserName());
			data.setUserPW(vo.getUserPW());
			datas.add(data);
		}
		
		return datas;
	}
	
	//로그인여부 확인
	public boolean memberLoginCheck(MemberVO data) {
		
		for(MemberVO vo : this.datas) {
			
			if(vo.getUserID().equals(data.getUserID()) 
					&&	vo.getUserPW().equals(data.getUserPW())) {
				return true;
			}
			
		}
		
		
		return false;
		
		
	}
}
