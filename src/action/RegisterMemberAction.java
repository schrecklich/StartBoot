package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import community.DAO.MemberDAO;
import community.DTO.MemberDTO;;

public class RegisterMemberAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");

		
		
		System.out.println("RegisterMember 호출됨");
		
		String inputId=request.getParameter("inputId");
		String inputPassword=request.getParameter("inputPassword");
		String inputName=request.getParameter("inputName");
		String inputEmail=request.getParameter("inputEmail");
		
		System.out.println("inputId=" + inputId + " ,inputPassword=" + inputPassword + " ,inputName=" + inputName + ", inputEmail=" + inputEmail);
		
		request.setAttribute("inputId", inputId);
		request.setAttribute("inputPassword", inputPassword);
		request.setAttribute("inputName", inputName);
		request.setAttribute("inputEmail", inputEmail);
		
		/////////////////////////////////////////////////////
		
		MemberDTO member = new MemberDTO();
		member.setId(inputId);
		member.setPw(inputPassword);
		member.setName(inputName);
		member.setEmail(inputEmail);
		
		MemberDAO dbPro = new MemberDAO();
		
		int check=dbPro.insertMember(member);
		if(check == -1){//같은 아이디가 존재하면
			System.out.println("같은 아이디 존재합니다");
			return "/RegisterMemberFail.jsp";
		}
		
		return "/RegisterMember.jsp";
	}

}
