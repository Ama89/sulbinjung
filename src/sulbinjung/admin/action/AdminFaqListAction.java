package sulbinjung.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.FaqDao;
import sulbinjung.dto.FaqDto;

public class AdminFaqListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		//1. 카페 글 목록을 읽어온다.
		List<FaqDto> list=FaqDao.getInstance().getList();
		//2. request 에 담는다
		request.setAttribute("list", list);		
		return new ActionForward("/views/admin/faq/list.jsp");
	}

}
