package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.FaqDto;
import sulbinjung.util.DbcpBean;

public class FaqDao {

	private static FaqDao dao;

	private FaqDao(){}

	public static FaqDao getInstance(){
		if(dao==null){
			dao = new FaqDao();
		}
		return dao;
	}
	
	public boolean insert(FaqDto dto){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql="INSERT INTO faq (num,title,contents) "
					+ "VALUES(faq_seq.NEXTVAL, ?, ?)";
			pstmt=conn.prepareStatement(sql);
			//? 에 값 바인딩하기
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContents());
			//sql 문 수행하기
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){//작업이 성공이면 
			return true;
		}else{//작업이 실패면 
			return false;
		}
	}// insert()
	
	
	public boolean update(FaqDto dto){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			conn=new DbcpBean().getConn();
			String sql="UPDATE faq SET title=?,contents=? "
					+ "WHERE num=?";
			pstmt=conn.prepareStatement(sql);
			//? 에 수정할 회원의 정보 바인딩하기
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContents());
			pstmt.setInt(3, dto.getNum());
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){
			return true;
		}else{
			return false;
		}
	}
	
	
	public boolean delete(int num){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			conn=new DbcpBean().getConn();
			String sql="DELETE FROM faq WHERE num=?";
			pstmt=conn.prepareStatement(sql);
			// ? 에 삭제할 회원의 번호를 바인딩 한다.
			pstmt.setInt(1, num);
			// 삭제하기
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){
			return true;
		}else{
			return false;
		}
	}
	
	
	public FaqDto getData(int num){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		FaqDto dto=null;
		try{
			conn=new DbcpBean().getConn();
			String sql="SELECT title,contents FROM faq "
					+ "WHERE num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			//SELECT 문 수행하고 결과값을 ResultSet 으로 받아오기
			rs=pstmt.executeQuery();
			//SELECT 된 결과가 있다면 cursor 를 한칸 내려서
			if(rs.next()){
				//커서가 위치한곳의 정보를 읽어온다.
				String title=rs.getString("title");
				String contents=rs.getString("contents");
				//MemberDto 객체를 생성해서 담는다. 
				dto=new FaqDto(num, title, contents);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return dto;
	}		
	
	
	//FAQ 목록 리턴
		public List<FaqDto> getList(){
			//필요한 객체를 담을 지역변수 만들기
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			//회원목록을 담을 객체 생성
			List<FaqDto> list=new ArrayList<>();
			try{
				conn=new DbcpBean().getConn();
				String sql="SELECT num,title,contents FROM FAQ "
						+ "ORDER BY num ASC";
				pstmt=conn.prepareStatement(sql);
				//sql 문 수행하고 결과셋 받아오기
				rs=pstmt.executeQuery();
				while(rs.next()){
					int num=rs.getInt("num");
					String title=rs.getString("title");
					String contents=rs.getString("contents");
					//회원 한명의 정보를 MemberDto 객체에 담는다.
					FaqDto dto=new FaqDto(num, title, contents);
					//MemberDto 객체의 참조값을 ArrayList 에 저장
					list.add(dto);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				}catch(Exception e){}
			}
			return list;
		}//getList()
		
}
