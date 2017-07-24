package sulbinjung.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sulbinjung.dto.NoticeDto;

import sulbinjung.mybatis.SqlMapConfig;

public class NoticeDao {
	private static NoticeDao dao;

	private static SqlSessionFactory factory;
	private NoticeDao(){}

	public static NoticeDao getInstance(){
		if(dao==null){
			dao=new NoticeDao();
			factory=SqlMapConfig.getSqlSession();
		}
		return dao;
	}
	public void insert(NoticeDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.insert("notice.insert", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}//insert()
		
	public List<NoticeDto> getList(){
		SqlSession session=factory.openSession();
		
		List<NoticeDto> list=null;
		try{
			list=session.selectList("notice.getList");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	public NoticeDto getData(int num){
		SqlSession session=factory.openSession();
		NoticeDto dto=null;
		try{
			dto=session.selectOne("notice.getData", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return dto;
	}
	public NoticeDto getWriter(String writer){
		SqlSession session=factory.openSession();
		NoticeDto dto=null;
		try{
			dto=session.selectOne("notice.getWriter", writer);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return dto;
	}	
	public void update(NoticeDto dto){
		SqlSession session=factory.openSession(true);
		try{
			session.update("notice.update", dto);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}	
	public void delete(int num){
		SqlSession session=factory.openSession(true);
		try{
			session.update("notice.delete", num);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
	}		

}
