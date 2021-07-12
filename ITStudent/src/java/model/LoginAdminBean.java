//DAO class


package model;

//sql class's imported
import java.sql.*;

//class definition
public class LoginAdminBean {

    //global variables definition
    public String username_a;
    public String password_a;

    //getter & setter for the variables

    public String getPassword_a() {
        return password_a;
    }

    public void setPassword_a(String password_a) {
        this.password_a = password_a;
    }

    public String getUsername_a() {
        return username_a;
    }

    public void setUsername_a(String username_a) {
        this.username_a = username_a;
    }


    //validate method returning value of int type. Used to interact with db
    public int validate() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select * from adminlogin where adminname='" + username_a + "'and password='" + password_a + "'";
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                return 1;
            } else {
                return 0;
            }
        } catch (Exception ex) {
            return 0;
        }
    }


}

