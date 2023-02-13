package Dao.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.DbConnection;
import Model.member;

public class implMember implements memberDao{

	public static void main(String[] args) {
		/*member m = new member("fff","1234","Amy","高雄","555","678");
		new implMember().add(m);*/
		
		//System.out.println(new implMember().selectAll());
		
		//System.out.println(new implMember().selectUser("fff", "1234"));
		
		System.out.println(new implMember().selectUser("ccc"));
	}

	@Override
	public void add(member m) {
		Connection conn = DbConnection.getDb();
		String SQL = "insert into member(username,password,name,address,phone,mobile) "
				+ "values(?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ps.setString(1, m.getUsername());
			ps.setString(2, m.getPassword());
			ps.setString(3, m.getName());
			ps.setString(4, m.getAddress());
			ps.setString(5, m.getPhone());
			ps.setString(6, m.getMobile());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<member> selectAll() {
		Connection conn = DbConnection.getDb();
		String SQL = "select * from member";
		List<member> l = new ArrayList();
		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				member m = new member();
				m.setId(rs.getInt("id"));
				m.setUsername(rs.getString("username"));
				m.setPassword(rs.getString("password"));
				m.setName(rs.getString("name"));
				m.setAddress(rs.getString("address"));
				m.setPhone(rs.getString("phone"));
				m.setMobile(rs.getString("mobile"));
				
				l.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l;
	}

	@Override
	public member selectUser(String username, String password) {
		Connection conn = DbConnection.getDb();
		String SQL = "select * from member where username=? and password=?";
		member m = null;
		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				m = new member();
				m.setId(rs.getInt("id"));
				m.setUsername(rs.getString("username"));
				m.setPassword(rs.getString("password"));
				m.setName(rs.getString("name"));
				m.setAddress(rs.getString("address"));
				m.setPhone(rs.getString("phone"));
				m.setMobile(rs.getString("mobile"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return m;
	}

	@Override
	public boolean selectUser(String username) {
		Connection conn = DbConnection.getDb();
		String SQL = "select * from member where username=?";
		boolean x = false;
		try {
			PreparedStatement ps = conn.prepareStatement(SQL);
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) x = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}

}
