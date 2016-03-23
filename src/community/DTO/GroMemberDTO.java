package community.DTO;

/*
 * 8. 그룹
 - 그룹번호(pk)
 - 그룹명
 - 그룹주인(회원_ID_pk)
 * 
 */

public class GroMemberDTO {
	private String gronum;
	private String gromember;
	
	public String getGronum() {
		return gronum;
	}
	public void setGronum(String gronum) {
		this.gronum = gronum;
	}
	public String getGromember() {
		return gromember;
	}
	public void setGromember(String gromember) {
		this.gromember = gromember;
	}
	
	

}
