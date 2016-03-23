package community.DTO;

import java.sql.Timestamp;

/*---------날짜 String에서 Timestamp로 수정
 * 10. 그룹게시판
 - 그룹게시물번호(pk)
 - 작성자(그룹주인_ID_fk)
 - 등록일
 - 제목
 - 내용
 - 조회수
 - 첨부파일
 * 
 */

public class GroBoardReplyDTO {
	private int num;
	private String id;
	private String subject;
	private Timestamp reg_date;
	private String content;
	private int re_step;
	private int re_level;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	
}
