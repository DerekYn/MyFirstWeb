package standardActionStudy.test;

import java.util.Date;

public class PersonDTO {

	private String name;     // 성명  기본값은  null
	private char   gender;   // 성별  기본값은  ' '
	private int    age;      // 나이  기본값은  0
	
	private String jubun;    // 주민번호
	
	public PersonDTO() { }
	
	{name="이순신"; gender='m'; age=25;}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public String getGenderStr() {
		
		String genderStr = "";
		
		switch (gender) {
		case 'M':
		case 'm':	
			genderStr = "남자";
			break;

		case 'F':
		case 'f':	
			genderStr = "여자";
			break;
		}
		
		return genderStr;
	}
	

	public String strgender() {
		
		String genderStr = "";
		
		switch (gender) {
		case 'M':
		case 'm':	
			genderStr = "남자";
			break;

		case 'F':
		case 'f':	
			genderStr = "여자";
			break;
		}
		
		return genderStr;
	}
	
	public String getJubun() {
		return jubun;
	}

	public void setJubun(String jubun) {
		this.jubun = jubun;
	}
	
	
	public String getMygender() {
		
		String genderFlag = jubun.substring(6,7);
		
		String result = "";
		
		switch (genderFlag) {
			case "1":
			case "3":
				result = "남자";
				break;

			case "2":
			case "4":
				result = "여자";
				break;
		}
		
		return result;
	}// end of String getMygender()-------------
	
	
	public int getMyage() {
		
		int result = 0;
		
		String strJubunYear = jubun.substring(0, 2);
		String genderFlag = jubun.substring(6,7);
		
		int jubunYear = 0;
		if("1".equals(genderFlag) || "2".equals(genderFlag)) {
			jubunYear = 1900 + Integer.parseInt(strJubunYear);
		}
		else if("3".equals(genderFlag) || "4".equals(genderFlag)) {
			jubunYear = 2000 + Integer.parseInt(strJubunYear);
		}
		
		Date now = new Date();
		String strNowYear = String.format("%tY", now);
		result = Integer.parseInt(strNowYear) - jubunYear + 1;
		
		return result;
	}// end of int getMyage()--------------------
	
	
}
