/*
 * (�ӽ�) data base
 * PostInfoDB �� instance memeber array (��� 8ea, max 5���� �Խñ�)
 * 
 * */

package clientInfo;

public class PostInfoDB {
	
	private String[] postInfoArr = new String[40];
	private int countArr = 1;							// �迭(=�Խñ�) ��ȭ���θ� Ȯ���ϱ����� flag (max 5)
	private int startIndex = 0;							// �迭�� ���۹�ȣ (DB�� primary key)
	
	
	// �迭�� �ּҸ� ��ȯ (test��) //
	public String[] getArr() {
		return this.postInfoArr;
	} // getArr() END
	
	
	// �迭�� ��ü ��Ҹ� ���� //
	public void setAll(String bookName, String writer, String title, String content, String bookType, String favorite, String level, String score) {
		
		this.postInfoArr[startIndex]   = bookName;
		this.postInfoArr[startIndex+1] = writer;
		this.postInfoArr[startIndex+2] = title;
		this.postInfoArr[startIndex+3] = content;
		this.postInfoArr[startIndex+4] = bookType;
		this.postInfoArr[startIndex+5] = favorite;
		this.postInfoArr[startIndex+6] = level;
		this.postInfoArr[startIndex+7] = score;	
		
		this.startIndex += 8;			// ���� �ε��� ����
		
	} // setAll() END
	
	
	// �迭�� ���尡���� ������ Ȯ��(=�Խñ�) //
	// ���尡�� : true , ����Ұ� : false
	public boolean isEmpty() {
		
		boolean result = false;
		
		if(countArr>=1 && countArr<=5) {		// ���尡��
			this.countArr += 1;
			result = true;
		}
		return result;
		
	} // isEmpty() END
	
	
}// PostInfoDB END
