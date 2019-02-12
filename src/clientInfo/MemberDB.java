package clientInfo;

// = �ӽ� DAO + DB�� ��Ȱ�� Ŭ����
public class MemberDB {
	
	// id, pw, name, email, address = String
	
	// element 5�� ������ ������ ȸ���� ����
	private String[] memberArr = new String[20];		// ȸ���� 4�� ���Թ��� (�ӽ�)
	private int startNum = 0;

	
	public String[] getMemberArr(){
		return this.memberArr;
	}
	
	// ȸ������ setter
	public void setMember(String id, String pw, String name, String email, String address){	

		this.memberArr[startNum] = id;	
		this.memberArr[startNum+1] = pw;
		this.memberArr[startNum+2] = name;
		this.memberArr[startNum+3] = email;
		this.memberArr[startNum+4] = address;
		
		startNum += 5;
	} // setMember() END
	
	
	// �迭 element�� full check //
	public boolean isFull() {
		
		boolean result = false;
		
		if(this.memberArr[16] != null) {			// 4��° �Էµ� id������ ���͸�
			result = true;
		}
		
		return result;
	} // isFull() END


	// id�ߺ� Ȯ�ο� method //
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
	
	
	
	
	// �α��� ���͸��� ���� id,pw �� �޼ҵ� // 
	public boolean loginFilter(String id, String pw) {

		boolean result = false;

		for(int index=0 ; index<4 ; index++) {

			if(id.equals(this.memberArr[index*5])) {		// id �����ϴ� element index : 0,5,10,15
				
				if(pw.equals(this.memberArr[index*5+1])) {
					result = true;	
				}	
			}
		}
		return result;

	} // loginFilter() END
	
	
} // MemberDB END
