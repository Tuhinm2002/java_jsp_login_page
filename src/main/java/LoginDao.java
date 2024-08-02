import java.sql.*;

public class LoginDao {

	private String uname;
	private String passw;
	
	public LoginDao(String uname,String passw) {
		this.uname = uname;
		this.passw = passw;
	}
	
	public String getUname() {
		return this.uname;
	}
	
	public String getPass() {
		return this.passw;
	}
	
	public boolean checkEntry(){
		
		String url = "jdbc:mysql://localhost:3306/jdbc_demo";
		String login_name = "root";
		String login_pass = "root";
		String comm = "Select * from login where uname=? and passw=?";
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url,login_name,login_pass);
		
		PreparedStatement st = con.prepareStatement(comm);
		st.setString(1, this.uname);
		st.setString(2,this.passw);
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			return true;
		}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return false;
		
	}
	
}
