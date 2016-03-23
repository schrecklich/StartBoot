package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import community.DAO.NoticeBoardDAO;
import community.DTO.NoticeBoardDTO;

public class BoardAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("BoardAction 실행");
		// TODO Auto-generated method stub
		System.out.println("BoardAction의 requestPro()호출됨");
		/*String pageNum=request.getParameter("pageNum");
		//추가 search, searchtext
		String search=request.getParameter("search");
		String searchtext=request.getParameter("searchtext");
		//search,searchtext의 초기화 작업
		if(search==null){
			search="";
		}
		if(searchtext==null){
			searchtext="";
		}
		System.out.println("ListAction의 매개변수 출력");
		System.out.println("search="+ search +"searchtext="+searchtext);*/
			
		//int count=0;
		List<NoticeBoardDTO> articleList = null;// 10개
		NoticeBoardDAO dbPro = new NoticeBoardDAO();
		//count = dbPro.getArticleSearchCount(search, searchtext);
		articleList = dbPro.getArticles();
		System.out.println("레코드수(count)=" + articleList.size());
		//System.out.println("현재 검색된 레코드수(count)=" + count);
		//페이징 처리해주는 메서드호출
		//Hashtable<String,Integer> pgList=dbPro.pageList(pageNum, count);
		
		//if (count > 0) {// 한개라도 존재한다면
		//	System.out.println(pgList.get("startRow")+","+pgList.get("endRow"));
			//articleList = dbPro.getBoardArticles(pgList.get("startRow"), pgList.get("pageSize"),search,searchtext);
		//}else{//찾은레코드가없다면
			//articleList=Collections.EMPTY_LIST;
		//}
		//request.setAttribute("search", search);
		//request.setAttribute("searchtext", searchtext);
		request.setAttribute("articleList", articleList);
		//request.setAttribute("pgList", pgList);		
		
		//3.경로포함해서 이동할 페이지명을 설정		
		return "/web/board.jsp";
	}

}
