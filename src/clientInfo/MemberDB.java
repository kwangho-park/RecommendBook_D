package clientInfo;

// = �ӽ� DAO + DB�� ��Ȱ�� Ŭ����
public class MemberDB {

	// id, pw, name, email, address = String
	
	// element 5�� ������ ������ ȸ���� ����
	private String[] memberArr = new String[20];		// ȸ���� 4�� ���Թ��� (�ӽ�)
	private int startNum = 0;
	private int memberNum = 0;							// ȸ����ȣ

	// ȸ������ �� �߻��ϴ� parameter�� ���޹ޱ����� �뵵
	private String signUpId = "";
	private String signUpPw = "";
	private String signUpName = "";
	private String signUpEmail = "";
	private String signUpAddress = "";
	
	// �α��� �� �߻��ϴ� parameter�� ���޹ޱ����� �뵵
	private String loginId = "";
	private String loginPw = "";
	
	
	// getter, setter //
	public int getMemberNum() { return this.memberNum;	}
	
	
	// instance method�� �������ڸ� ��ü�ϱ� ���� (�ӽ�) getter, setter //
	public String getsignUpId() { return this.signUpId;	}
	public void setsignUpId(String signUpId) {	this.signUpId =signUpId;	}
	
	public String getsignUpPw() { return this.signUpPw;	}
	public void setsignUpPw(String signUpPw) {	this.signUpPw =signUpPw;	}
	
	public String getsignUpName() { return this.signUpName;	}
	public void setsignUpName(String signUpName) {	this.signUpName =signUpName;	}
	
	public String getsignUpEmail() { return this.signUpEmail;	}
	public void setsignUpEmail(String signUpEmail) {	this.signUpEmail =signUpEmail;	}
	
	public String getsignUpAddress() { return this.signUpAddress;	}
	public void setsignUpAddress(String signUpAddress) {	this.signUpAddress =signUpAddress;	}


	
	public String getLoginId() { return this.loginId;	}
	public void setLoginId(String loginId) {	this.loginId = loginId;	}
	
	public String getLoginPw() { return this.loginPw;	}
	public void setLoginPw(String loginPw) {	this.loginPw = loginPw;	}

	

	// �迭 element�� full check //
	public boolean isFull() {
		
		boolean result = false;
		
		if(this.memberArr[15] != null) {			// 4��° �Էµ� id������ ���͸�
			result = true;
		}
		
		return result;
	} // isFull() END


	
	// id�ߺ� Ȯ�ο� method //
	// �ߺ��Ǵ� id�� �迭�� ���� �� ��� false ��ȯ
	public boolean idFilter() {

		boolean result = true;

		for(int index=0 ; index<20 ; index+=5) {

			if(this.signUpId.equals(this.memberArr[index])) {		// id �����ϴ� element index : 0,5,10,15 
				result = false;
			}
		}
		return result;

	} // idFilter() END
	

	// ȸ�������� �����ϴ� method // 
	// jsp action tag�� �Ѱܹ��� ������ setting
	public void setMemberArr() {
		this.memberArr[this.startNum] = this.signUpId;	
		this.memberArr[this.startNum+1] = this.signUpPw;
		this.memberArr[this.startNum+2] = this.signUpName;
		this.memberArr[this.startNum+3] = this.signUpEmail;
		this.memberArr[this.startNum+4] = this.signUpAddress;
		
		this.startNum += 5;
		this.memberNum += 1;
	}
	
	/////////////////////////////////////////////////////////////////////////
	

	
	// �α��� ���͸��� ���� id,pw �� �޼ҵ� // 
	public boolean loginFilter() {

		boolean result = false;

		for(int index=0 ; index<4 ; index++) {

			if(this.loginId.equals(this.memberArr[index*5])) {		// id �����ϴ� element index : 0,5,10,15
				
				if(this.loginPw.equals(this.memberArr[index*5+1])) {
					result = true;	
				}	
			}
		}
		return result;

	} // loginFilter() END

	
} // MemberDB END
