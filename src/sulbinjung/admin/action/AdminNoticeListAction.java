package sulbinjung.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.NoticeDao;
import sulbinjung.dto.NoticeDto;

public class AdminNoticeListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		List<NoticeDto> list=NoticeDao.getInstance().getList();
		request.setAttribute("list", list);
		return new ActionForward("/views/admin/notice/list.jsp");
	}

}
