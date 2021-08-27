package day44_0827;

//실무에서는 당연히 Bean이기 때문에 문구를 떼기도 한다.(VO, DAO도)
public class LoginBean  {
	private String userID; // 멤버변수명 -> view(.jsp .html)의 name과 일치시킴!(필수는 아니지만, 굉장히 유용)
	private String userPW;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	
	//상수 생성
	final String dbID = "kim"; //DB역할. 값을 상수화
	final String dbPW = "1234";
	
	// 기능 (해당 컴포넌트의 기능 == 빈즈의 기능)
	public boolean check() {
		if(userID.equals(dbID)&&userPW.equals(dbPW)) {
			return true;
		}
		return false;
	}
	
}
