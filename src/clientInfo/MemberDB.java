package clientInfo;

public class MemberDB {

	// data type (임시)
	// id, pw, name, email, address = String
	
	// element 5개 단위로 동일한 회원의 정보
	private String[] memberArr = new String[20];		// 회원은 4명만 가입받음 (임시)
	private int startNum = 0;
	
	// [test]
	public void memberArrTest() {
		this.memberArr[0] = "admin";
		this.memberArr[1] = "1234";
		
		this.memberArr[5] = "a";
		this.memberArr[10] = "b";
		this.memberArr[15] = "c";
	}


	// 회원정보 셋팅용 get, set
	public String[] getMemberArr(){
		return this.memberArr;		
	}

	public void setMember(String id, String pw, String name, String email, String address){	
		
		this.memberArr[startNum] = id;	
		this.memberArr[startNum+1] = pw;
		this.memberArr[startNum+2] = name;
		this.memberArr[startNum+3] = email;
		this.memberArr[startNum+4] = address;
		
		startNum += 5;
	}
	
	
	
	// test
	public void deleteMemberArr() {
		for(int index=0 ; index<20 ; index++) {
			this.memberArr[index] = null;
		}
	}
	
	
	
	
	
	public String getPw(){	return this.memberArr[1];	}
	public void setPw(String pw){	this.memberArr[1] = pw;	}

	public String getName(){	return this.memberArr[2];	}
	public void setName(String name){	this.memberArr[2] = name;	}
	
	
	// 배열이 full 여부 확인
	public boolean isFull() {
		
		boolean result = false;
		
		if(this.memberArr[16] != null) {			// 4번째 입력된 id값으로 필터링
			result = true;
		}
		
		return result;
	}

	 
	// id중복 확인용 method
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
	
	
} // MemberDB END
