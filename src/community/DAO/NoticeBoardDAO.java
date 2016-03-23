package community.DAO;

//DB연동
//import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import DBConnection.DBConnectionMgr;
import community.DTO.NoticeBoardDTO;

public class NoticeBoardDAO {
	// 1. 멤버변수로 선언
	private DBConnectionMgr pool = null;

	// 2.생성자->상대방클래스의 객체생성
	public NoticeBoardDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool=" + pool);

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("DB접속 오류" + e);
		}

	}

	// 3. 게시판 리스트 보여주기
	public List getArticles(){
			Connection con = null;
			PreparedStatement pstmt=null;
			ResultSet rs=null; //insert into member values(id, password, name, email)
			String sql=null;
			List<NoticeBoardDTO> articleList = null;
			System.out.println("getArticles()함수 호출");			
			try {
					con = pool.getConnection();
					sql = "select * from notiboard order by num desc";
					pstmt=con.prepareStatement(sql);
					rs=pstmt.executeQuery();
					if(rs.next()) {
						articleList=new ArrayList();
						do {							
							NoticeBoardDTO article = makeArticleFromResultSet(rs);
							articleList.add(article);							
						} while (true == rs.next());					
					}										

			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("getArticles()에러발생" + e);
			} finally{
				pool.freeConnection(con, pstmt, rs);
			}			
			return articleList;
		}

	public NoticeBoardDTO makeArticleFromResultSet(ResultSet rs) throws Exception {
		NoticeBoardDTO article = new NoticeBoardDTO();
		article.setNum(rs.getInt("num"));
		article.setId(rs.getString("id"));
		//article.setReg_date(rs.getTimestamp("reg_date"));
		article.setReg_date(rs.getTimestamp("reg_date"));
		article.setSubject(rs.getString("id"));
		article.setCount(rs.getInt("count"));
		article.setSubject(rs.getString("subject"));
		article.setAddnum(rs.getInt("addnum"));

		return article;
	}

	//4.공지사항 게시판에 글쓰기
	public void insertArticleNotice(NoticeBoardDTO article){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=null;
		System.out.println("insertArticleNotice()확인");
		int number = 0;//게시물번호->입력할 계시물 번호
		
		try {
			con = pool.getConnection();
			sql = "select max(num) from notiboard";// 최대게시물번호 + 1
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// 테이블의 게시물번호의 최대값을 구하기
			if (rs.next()) {
				number = rs.getInt(1) + 1;
			} else
				number = 1;
	
			// num->auto_increment(자동),readcount
			// reg_date, ref, re_step, re_level, ip ->시스템적으로 입력
			sql = "insert into notiboard values(?,?,to_char(?, 'YYYY-MM-DD hh:mi:ss'),?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			//pstmt.setInt(1, article.getNum());
			pstmt.setInt(1, number);
			pstmt.setString(2, "admin");
			pstmt.setTimestamp(3, article.getReg_date());
			pstmt.setString(4, article.getSubject());
			pstmt.setString(5, article.getContent());
			pstmt.setInt(6, article.getCount());
			// ------------------------------------------
			//pstmt.setInt(6, ref); // 5 article.getRe_ref X
			//pstmt.setInt(7, re_step); // 0 article.getRe_step X
			//pstmt.setInt(8, re_level); // 0 article.getRe_level X
			// ------------------------------------------
			pstmt.setInt(7, 1/*article.getAddnum()*/);
			
			int insert = pstmt.executeUpdate();
			System.out.println("공지게시판 데이터입력유무(insert)=" + insert);

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("insertArticleNotice()에러유발=" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
	
	
	
	
	
	///////
	//5.공지사항 글 지우기
	//
	
}
