package sungjuk;

public class StudentBean {
//프로퍼티

	private String number;
	private String name;
	private int kor;
	private int eng;
	private int math;
	private double sum;
	private double avg;
	private String grade;
	
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public double getSum() {
		sum = kor+eng+math;
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	
	public double getAvg() {
		avg = sum/3.0f;
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	public String getGrade() {
		
		if (avg >= 90) {
			grade = "A grade";
		} else if (avg >= 80)
			grade = "B grade";
		else if (avg >= 70)
			grade = "C grade";
		else if (avg >= 60)
			grade = "D grade";
		else
			grade = "F grade";

		
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

}
