package sulbinjung.controller;

import sulbinjung.admin.action.AdminLoginAction;
import sulbinjung.members.action.CheckIdAction;
import sulbinjung.members.action.HomeAction;
import sulbinjung.members.action.MembersDeleteAction;
import sulbinjung.members.action.MembersInfoAction;
import sulbinjung.members.action.MembersUpdateAction;
import sulbinjung.members.action.MembersUpdateformAction;
import sulbinjung.members.action.SigninAction;
import sulbinjung.members.action.SigninFormAction;
import sulbinjung.members.action.SignoutAction;
import sulbinjung.members.action.SignupAction;

public class UserActionFactory {
	private static UserActionFactory factory;
	private UserActionFactory(){}
	//자신의 참조값을 리턴해주는 메소드
	public static UserActionFactory getInstance(){
		if(factory == null){
			factory = new UserActionFactory();
		}
		return factory;
	}
	
	//인자로 전달되는 command를 수행할 Action type 객체를 리턴해주는 메소드
	public Action action(String command){
		Action action = null;
		if(command.equals("/home")){
			action=new HomeAction();
		}else if(command.equals("/admin/login")){
			action=new AdminLoginAction();
		}else if(command.equals("/members/checkid")){
			action=new CheckIdAction();
		}else if(command.equals("/members/signup")){
			action=new SignupAction();
		}else if(command.equals("/members/signin_form")){	
			action=new SigninFormAction();
		}else if(command.equals("/members/signin")){
			action=new SigninAction();
		}else if(command.equals("/members/signout")){
			action=new SignoutAction();
		}else if(command.equals("/members/private/info")){
			action=new MembersInfoAction();
		}else if(command.equals("/members/private/delete")){
			action=new MembersDeleteAction();
		}else if(command.equals("/members/private/updateform")){
			action=new MembersUpdateformAction();
		}else if(command.equals("/members/private/update")){
			action=new MembersUpdateAction();
		}
		return action;
	}
}