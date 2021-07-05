package info.beans;

public class InfoBean {
	//멤버변수와 세터 게터 ->빈즈
	
	private String name;
	private String id;
	
	public String getGender() {
		char sexNum = id.charAt(7); //주민번호 800102-1234567
		if(sexNum == '1' || sexNum == '3')
			return "남자";
		else
			return "여자";
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
