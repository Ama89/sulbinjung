package sulbinjung.members.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.MembersDao;

public class CheckIdAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//1. ajax 전송 아이디 읽어오기 
		String id=request.getParameter("inputId");
		//2. 사용 가능 여부를 boolean type 으로 Dao 객체로 부터 리턴 받기
		boolean canUse=MembersDao.getInstance().canUseId(id);
		//3. request 에 담고 
		request.setAttribute("canUse", canUse);
		//4. JSON 문자열을 응답하기 위해 뷰 페이지로 forward 이동 
		return new ActionForward("/views/members/checkid.jsp");
	}

}
