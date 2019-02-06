package clientInfo;

public class MemberDB {

	// data type (�ӽ�)
	// id, pw, name, email, address = String
	
	// element 5�� ������ ������ ȸ���� ����
	private String[] memberArr = new String[20];		// ȸ���� 4�� ���Թ��� (�ӽ�)
	private int startNum = 0;
	
	// [test]
	public void memberArrTest() {
		this.memberArr[0] = "admin";
		this.memberArr[1] = "1234";
		
		this.memberArr[5] = "a";
		this.memberArr[10] = "b";
		this.memberArr[15] = "c";
	}


	// ȸ������ ���ÿ� get, set
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
	
	
	// �迭�� full ���� Ȯ��
	public boolean isFull() {
		
		boolean result = false;
		
		if(this.memberArr[16] != null) {			// 4��° �Էµ� id������ ���͸�
			result = true;
		}
		
		return result;
	}

	 
	// id�ߺ� Ȯ�ο� method
	// �ߺ��Ǵ� id�� �迭�� ���� �� ��� false ��ȯ
	public boolean idFilter(String id) {

		boolean result = true;

		for(int index=0 ; index<4 ; index++) {

			if(id.equals(this.memberArr[index*5])) {		// id �����ϴ� element index : 0,5,10,15 
				result = false;
			}
		}
		return result;
		
	} // idFilter() END
	
	
} // MemberDB END
