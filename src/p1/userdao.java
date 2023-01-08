package p1;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import p2.userbean;
public class userdao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
	}catch(Exception e){System.out.println(e);}
	return con;
}
	public static int insert(userbean u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into donerinfo(username,age,bloodgroup,sex,state,district,address,mobile)values(?,?,?,?,?,?,?,?)");
			ps.setString(1,u.getUsername());
			ps.setInt(2,u.getAge());
			ps.setString(3,u.getBloodgroup());
			ps.setString(4,u.getSex());
			ps.setString(5,u.getState());
			ps.setString(6,u.getDistrict());
			ps.setString(7,u.getAddress());
			ps.setInt(8,u.getMobile());
			status=ps.executeUpdate();
		}
		catch(Exception e){System.out.println(e);}
		return status;
		}

	
public static List<userbean>getAllRecords(String username)
{
	List<userbean>list=new ArrayList<userbean>();
	try{
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from donerinfo where username=?");
		ps.setString(1,username);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			userbean u=new userbean();
			u.setUsername(rs.getString("username"));
			u.setAge(rs.getInt("age"));
			u.setBloodgroup(rs.getString("bloodgroup"));
			u.setSex(rs.getString("sex"));
			u.setState(rs.getString("state"));
			u.setDistrict(rs.getString("district"));
			u.setAddress(rs.getString("address"));
			u.setMobile(rs.getInt("mobile"));
			list.add(u);
		}
	}
		catch(Exception e){System.out.println(e);}
		return list;	
}
public static List<userbean>getAllRecordsBy(String bg)
{
	List<userbean>list=new ArrayList<userbean>();
	try{
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from donerinfo where bloodgroup=?");
		ps.setString(1,bg);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			userbean u=new userbean();
			u.setAge(rs.getInt("age"));
			u.setBloodgroup(rs.getString("bloodgroup"));
			u.setSex(rs.getString("sex"));
			u.setState(rs.getString("state"));
			u.setDistrict(rs.getString("district"));
			u.setAddress(rs.getString("address"));
			u.setMobile(rs.getInt("mobile"));
			list.add(u);
		}
	}
		catch(Exception e){System.out.println(e);}
		return list;	
}
public static List<userbean>getAllRecordsBY(String district)
{
	List<userbean>list=new ArrayList<userbean>();
	try{
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from donerinfo where district=?");
		ps.setString(1,district);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			userbean u=new userbean();
			u.setAge(rs.getInt("age"));
			u.setBloodgroup(rs.getString("bloodgroup"));
			u.setSex(rs.getString("sex"));
			u.setState(rs.getString("state"));
			u.setDistrict(rs.getString("district"));
			u.setAddress(rs.getString("address"));
			u.setMobile(rs.getInt("mobile"));
			list.add(u);
		}
	}
		catch(Exception e){System.out.println(e);}
		return list;	
}


}

	
	


