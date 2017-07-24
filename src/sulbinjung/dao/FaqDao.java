package sulbinjung.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sulbinjung.dto.FaqDto;
import sulbinjung.mybatis.SqlMapConfig;

public class FaqDao {

	private static FaqDao dao;

	private static SqlSessionFactory factory;
	private FaqDao(){}

	public static FaqDao getInstance(){
		if(dao==null){
			dao=new FaqDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	
	public void insert(FaqDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.insert("faq.insert", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}//insert()
		
	public List<FaqDto> getList(){
		SqlSession session=factory.openSession();
		
		List<FaqDto> list=null;
		try{
			list=session.selectList("faq.getList");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	public FaqDto getData(int num){
		SqlSession session=factory.openSession();
		FaqDto dto=null;
		try{
			dto=session.selectOne("faq.getData", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return dto;
	}
	public void update(FaqDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.update("faq.update", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}	
	public void delete(int num){
		SqlSession session=factory.openSession(true);
		try{
			session.update("faq.delete", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}	
}
