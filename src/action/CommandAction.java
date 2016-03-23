package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//웹상에서 요청했을때 공통으로 사용하고자하는 메서드 선언
public interface CommandAction {
//반환값=>String->이동할 경로명 및 페이지명
//매개변수-->request,,response	
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable;
	
}
