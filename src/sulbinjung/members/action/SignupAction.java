package sulbinjung.members.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sulbinjung.controller.Action;
import sulbinjung.controller.ActionForward;
import sulbinjung.dao.MembersDao;
import sulbinjung.dto.MembersDto;

public class SignupAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String birth=request.getParameter("birth");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
				
		MembersDto dto=new MembersDto();
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setName(name);
		dto.setBirth(birth);
		dto.setEmail(email);
		dto.setPhone(phone);
		dto.setGender(gender);
		
		MembersDao.getInstance().insert(dto);
		
		return new ActionForward("/index.jsp");
	}
}