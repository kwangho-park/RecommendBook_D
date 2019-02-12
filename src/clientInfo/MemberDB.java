package clientInfo;

// = 임시 DAO + DB의 역활의 클래스
public class MemberDB {
	
	// id, pw, name, email, address = String
	
	// element 5개 단위로 동일한 회원의 정보
	private String[] memberArr = new String[20];		// 회원은 4명만 가입받음 (임시)
	private int startNum = 0;

	
	public String[] getMemberArr(){
		return this.memberArr;
	}
	
	// 회원정보 setter
	public void setMember(String id, String pw, String name, String email, String address){	

		this.memberArr[startNum] = id;	
		this.memberArr[startNum+1] = pw;
		this.memberArr[startNum+2] = name;
		this.memberArr[startNum+3] = email;
		this.memberArr[startNum+4] = address;
		
		startNum += 5;
	} // setMember() END
	
	
	// 배열 element의 full check //
	public boolean isFull() {
		
		boolean result = false;
		
		if(this.memberArr[16] != null) {			// 4번째 입력된 id값으로 필터링
			result = true;
		}
		
		return result;
	} // isFull() END


	// id중복 확인용 method //
	// 중복되는 id가 배열에 존재 할 경우 false 반환
	public boolean idFilter(String id) {

		boolean result = true;

		for(int index=0 ; index<4 ; index++) {

			if(id.equals(this.memberArr[index*5])) {		// id 저장하는 element index : 0,5,10,15 
				result = false;
			}
		}
		return result;

	} // idFilter() END
	
	
	
	
	// 로그인 필터링을 위한 id,pw 비교 메소드 // 
	public boolean loginFilter(String id, String pw) {

		boolean result = false;

		for(int index=0 ; index<4 ; index++) {

			if(id.equals(this.memberArr[index*5])) {		// id 저장하는 element index : 0,5,10,15
				
				if(pw.equals(this.memberArr[index*5+1])) {
					result = true;	
				}	
			}
		}
		return result;

	} // loginFilter() END
	
	
} // MemberDB END
