package sulbinjung.dao;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sulbinjung.dto.AdminDto;
import sulbinjung.mybatis.SqlMapConfig;

public class AdminDao {
	private static AdminDao dao;
	private static SqlSessionFactory factory;
	private AdminDao(){}

	public static AdminDao getInstance(){
		if(dao==null){
			dao=new AdminDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	public boolean isValid(AdminDto dto){
		SqlSession session=factory.openSession();
		AdminDto resultDto=null;
		try{
			resultDto=session.selectOne("admin.isValid", dto);
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

	
}
