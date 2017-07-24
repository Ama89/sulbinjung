package sulbinjung.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sulbinjung.dto.MembersDto;
import sulbinjung.mybatis.SqlMapConfig;

public class MembersDao {
	private static MembersDao dao;
	private static SqlSessionFactory factory;
	private MembersDao(){}
	public static MembersDao getInstance(){
		if(dao==null){
			dao=new MembersDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}	
	
	//인자로 전달된 번호에 해당하는 회원정보를 리턴해주는 메소드
		public MembersDto getData(String id){
			SqlSession session=factory.openSession();
			MembersDto dto=null;
			try{
				dto=session.selectOne("members.getData", id);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			return dto;
		}
		
		
		//회원정보를 저장하는 메소드 
		public void insert(MembersDto dto){
			SqlSession session=factory.openSession(true);
			try{
				session.insert("members.insert", dto);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			
		}//insert()
	
	//로그인 아이디, 비밀번호 매칭
	public boolean isValid(MembersDto dto){
		SqlSession session=factory.openSession();
		MembersDto resultDto=null;
		try{
			resultDto=session.selectOne("members.isValid", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		if(resultDto == null){//아이디 혹은 비밀번호가 틀린 경우 
			return false;
		}else{
			return true;
		}
	}//isValid()
	
	
	
	//회원정보 수정
	public void update(MembersDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.update("members.update", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	//회원정보 삭제
	public void delete(String id){
		SqlSession session=factory.openSession(true);
		try{
			session.delete("members.delete", id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	
	//회원목록 리턴
	public List<MembersDto> getList(){
		return null;
	}
	
	//인자로 전달되는 아이디로 가입할수 있는지 여부를 리턴해주는 메소드
		public boolean canUseId(String id){
			
		SqlSession session=factory.openSession();
		String result=null;
		try{
			result=session.selectOne("members.isExistId", id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		//result 가 null 이면 사용가능한 아이디 이다. 
		if(result==null){
			return true;
		}else{
			return false;
		}
	}
}
