package sulbinjung.members.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;

public class LogoutAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//로그아웃 처리
		request.getSession().invalidate();
		return new ActionForward("/index.jsp");
	}

}
