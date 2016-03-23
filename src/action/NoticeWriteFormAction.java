package action;

import java.util.Collections;
import java.util.Hashtable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import community.DAO.NoticeBoardDAO;
import community.DTO.NoticeBoardDTO;
//->/NoticewriteForm.do->NoticewriteForm.jsp로 이동
public class NoticeWriteFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("NoticeWriteAction 실행");
		// TODO Auto-generated method stub
				//1.list.do(글쓰기) 2.content.do(글상세보기)->답변글쓰기
				int num=0,ref=1,re_step=0,re_level=0;//신규글


/*				try {
					if(request.getParameter("num") != null) { //num은 0은 아니고 1이상
						System.out.println("================");
						System.out.println("num222222="+request.getParameter("num"));
						num = Integer.parseInt(request.getParameter("num"));
						ref = num - 1;
						re_step = Integer.parseInt(request.getParameter("re_step"));
						re_level = Integer.parseInt(request.getParameter("re_level"));
						
						System.out.println("NoticeWriteAction.do의 매개변수");
						System.out.println("num=" + num + ",re_level=" + re_level);
						System.out.println("ref=" + ref + ",re_step=" + re_step);
					}
				}catch (Exception e) {e.printStackTrace();}
				
				System.out.println("num=" + num);*/
				
				//request.setAttribute("num", num);
				//request.setAttribute("ref", ref);
				//request.setAttribute("re_step", re_step);
				//request.setAttribute("re_level", re_level);
				
						
				
				return "/NoticeWriteForm.jsp";
			}

}
