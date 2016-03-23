package community.DTO;

import java.sql.Timestamp;

/*---------날짜 String에서 Timestamp로 수정
 *
 *10. 그룹게시판
 - 그룹게시물번호(pk)
 - 작성자(그룹주인_ID_fk)
 - 등록일
 - 제목
 - 내용
 - 조회수
 - 첨부파일 
 * 
 */

public class GroBoardDTO {
	private int num;
	private String id;
	private Timestamp  reg_date;
	private String subject;
	private String content;
	private int count;
	private String lib;
	
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
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getLib() {
		return lib;
	}
	public void setLib(String lib) {
		this.lib = lib;
	}	
}
