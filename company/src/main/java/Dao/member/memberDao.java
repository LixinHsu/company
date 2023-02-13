package Dao.member;

import java.util.List;

import Model.member;

public interface memberDao {
	//create
	void add(member m);
	
	//read-->query
	List<member> selectAll();//全部
	member selectUser(String username, String password);//判斷帳號與密碼-->登入用
	boolean selectUser(String username);//帳號重複
	
	//update
	
	
	//delete
	
}
