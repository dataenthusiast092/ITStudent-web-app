//DAO class

package model;

//sql class's imports
import java.sql.*;


//class definition
public class LoginUserBean {

    //global variables definition
    public String username_u;
    public String password_u;

    //default constructor
    public LoginUserBean() {
    }

    //getter setter methods for the variables defined

    public String getPassword_u() {
        return password_u;
    }

    public void setPassword_u(String password_u) {
        this.password_u = password_u;
    }

    public String getUsername_u() {
        return username_u;
    }

    public void setUsername_u(String username_u) {
        this.username_u = username_u;
    }

    //validate method of type int. Used to interact with db
    public int validateu() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            Statement stmt = con.createStatement();
            String query = "Select * from userlogin where username='" + username_u + "'and password='" + password_u + "'";
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
