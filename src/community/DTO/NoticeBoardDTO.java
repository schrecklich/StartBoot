package community.DTO;

import java.sql.Timestamp;

public class NoticeBoardDTO {
	
	private int num;
	private String id;
	private Timestamp reg_date;
	private String subject;
	private String content;
	private int count;
	private int addnum;
		
	public int getNum() {
		return num;
	}
	public String getId() {
		return id;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public String getSubject() {
		return subject;
	}
	public String getContent() {
		return content;
	}
	public int getCount() {
		return count;
	}
	public int getAddnum() {
		return addnum;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setAddnum(int addnum) {
		this.addnum = addnum;
	}
	
	
	
}
