package sulbinjung.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sulbinjung.dto.MembersDto;
import sulbinjung.util.DbcpBean;

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
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE users SET pwd=?, email=? "
					+ "WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getId());
			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
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
