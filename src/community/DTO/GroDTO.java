package community.DTO;

/*
 * 8. 그룹
 - 그룹번호(pk)
 - 그룹명
 - 그룹주인(회원_ID_pk)
 * 
 */

public class GroDTO {
	private int gronum;
	private String groname;
	private String groowner;
	
	
	public int getGronum() {
		return gronum;
	}
	public void setGronum(int gronum) {
		this.gronum = gronum;
	}
	public String getGroname() {
		return groname;
	}
	public void setGroname(String groname) {
		this.groname = groname;
	}
	public String getGroowner() {
		return groowner;
	}
	public void setGroowner(String groowner) {
		this.groowner = groowner;
	}

}
