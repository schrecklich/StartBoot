package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import community.DAO.NoticeBoardDAO;
import community.DTO.NoticeBoardDTO;
//->글쓰기(/writePro.do)
public class NoticeWriteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//id,content,email,passwd,subject(5개 입력받음)
		//num,ref,re_step,re_level(4개)->신규,답변구분
		request.setCharacterEncoding("UTF-8");
		//BoardDTO article		
		
		System.out.println("id="+request.getParameter("id"));
		System.out.println("num="+request.getParameter("num"));
		System.out.println("subject="+request.getParameter("subject"));
		//System.out.println("id="+request.getParameter("id"));
		
		NoticeBoardDTO article=new NoticeBoardDTO();
		//article.setNum(Integer.parseInt(request.getParameter("num")));
		//article.setId(request.getParameter("id"));
		article.setSubject(request.getParameter("subject"));
		article.setContent(request.getParameter("content"));
		article.setReg_date(new Timestamp(System.currentTimeMillis()));
		
		//hidden
		//---------------------------------------------
		NoticeBoardDAO dbPro=new NoticeBoardDAO();
		dbPro.insertArticleNotice(article);
		//----------------------------------------------------------setAttribute사용 X
		return "/NoticeWritePro.jsp";
	}

}
