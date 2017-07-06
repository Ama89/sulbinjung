package sulbinjung.dao;

import sulbinjung.dto.FaqDto;

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
		
		return false;
	}
	
	public boolean update(FaqDto dto){
		
		return false;
	}
	
	public boolean delete(int num){
		return false;
	}
	
	public FaqDto getData(int num){
		
		FaqDto dto=null;
		
		return dto;		
	}
	
	
}
