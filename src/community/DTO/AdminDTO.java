package community.DTO;

/*
 * 1. 관리자
 - id	(아이디_pk)
 - pw 	(비밀번호, not null)
 - name	(이름,not null)
 - email(이메일,not null, unique) 
 * 
 */

public class AdminDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
