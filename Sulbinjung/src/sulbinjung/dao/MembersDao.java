package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.MembersDto;

public class MembersDao {
	private static MembersDao dao;

	private MembersDao(){}

	public static MembersDao getInstance(){
		if(dao==null){
			dao = new MembersDao();
		}
		return dao;
	}
		
	//회원정보 저장
	public boolean insert(MembersDto dto){
		return false;
	}
	
	//회원정보 수정
	public boolean update(MembersDto dto){
		return false;
	}
	
	//회원정보 삭제
	public boolean delete(int num){
		return false;
	}
	
	//회원목록 리턴
	public List<MembersDto> getList(){
			
		//필요한 객체를 담을 지역변수 만들기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//회원목록을 담을 객체 생성
		List<MembersDto> list = new ArrayList<>();
		
		return list;
	}
}
