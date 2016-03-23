package community.DAO;

//DB연동
//import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DBConnection.DBConnectionMgr;
import community.DTO.MemberDTO;

public class MemberDAO {
	// 1. 멤버변수로 선언
		private DBConnectionMgr pool = null;

		// 2.생성자->상대방클래스의 객체생성
		public MemberDAO() {
			try {
				pool = DBConnectionMgr.getInstance();
				System.out.println("pool=" + pool);

			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("DB접속 오류" + e);
			}

		}
		
		//3. 회원정보를 DB에 저장하는 메서드
		
		public int insertMember(MemberDTO member){
			Connection con = null;
			PreparedStatement pstmt=null;
			ResultSet rs=null; //insert into member values(id, password, name, email)
			String sql=null;
			int insert=-1;
			System.out.println("insertMember()함수 호출");
			System.out.println("member.getId()=" + member.getId());
			System.out.println("member.getPw()=" + member.getPw());
			System.out.println("member.getName()=" + member.getName());
			System.out.println("member.getEmail()=" + member.getEmail());
			
			//DB 입력하기전에 동일한 아이디가 있는지 체크
			try {
				con = pool.getConnection();
				sql = "select ? from member";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,member.getId());
				rs=pstmt.executeQuery();
				
				if(rs.next()){ // 같은 아이디가 있으면
					return -1;
				}
									
			} catch (Exception e) {
			// TODO: handle exception
				System.out.println("insertMember()에러발생" + e);
			} finally{
				pool.freeConnection(con, pstmt);
			}		
			
			try {
					con = pool.getConnection();
					sql = "insert into member (id,pw,name,Email) values(?,?,?,?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setString(1,member.getId());
					pstmt.setString(2,member.getPw());
					pstmt.setString(3,member.getName());
					pstmt.setString(4,member.getEmail());
					insert=pstmt.executeUpdate();
					System.out.println("회원가입성공유무="+insert);
										
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("insertMember()에러발생" + e);
			} finally{
				pool.freeConnection(con, pstmt);
			}
			return insert;
		}
		
		//4.회원탈퇴를 처리하는 메서드
		
		//5.아이디 찾기를 처리하는 메서드
		public boolean searchId() {
			
			
		}
		
		//6.비밀번호 찾기를 처리하는 메서드
		public boolean searchPw() {
			
			
		}

}
