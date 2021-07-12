package model;

//sql classes imported
import java.sql.*;

//class definition
public class UsernotesBean {

    //global variables definition
    public String title;
    public String description;
    public String user;

    //getter setter methods of global variables
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    //validate method of type int. Used to interact with db
    public int validate() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement smt = con.prepareStatement("insert into usernotes values(?,?,?,?)");
            smt.setInt(1,1);
            smt.setString(2, title);
            smt.setString(3, description);
            smt.setString(4, user);
            smt.executeUpdate();
            return 1;
        } catch (Exception e) {
         return 0;
        }
    }
}
