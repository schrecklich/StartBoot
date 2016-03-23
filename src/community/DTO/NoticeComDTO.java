package community.DTO;

import java.sql.Timestamp;

public class NoticeComDTO {
	
	private int num;
	private String id;
	private Timestamp reg_date;
	private String content;
	private int re_step;
	private int re_level;
	
	
	
	public int getNum() {
		return num;
	}
	public String getId() {
		return id;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public String getContent() {
		return content;
	}
	public int getRe_step() {
		return re_step;
	}
	public int getRe_level() {
		return re_level;
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
	public void setContent(String content) {
		this.content = content;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	
	

}
