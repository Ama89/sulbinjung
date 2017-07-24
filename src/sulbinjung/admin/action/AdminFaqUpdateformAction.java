package sulbinjung.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.FaqDao;
import sulbinjung.dto.FaqDto;

public class AdminFaqUpdateformAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 파라미터로 전달되는 수정할 글번호 읽어오기
		int num=Integer.parseInt(request.getParameter("num"));
		//2. 수정할 글의 정보 얻어오기
		FaqDto dto=FaqDao.getInstance().getData(num);
		//3. request 에 dto 를 담고
		request.setAttribute("dto", dto);		
		
		return new ActionForward("/views/admin/faq/updateform.jsp");
	}

}
