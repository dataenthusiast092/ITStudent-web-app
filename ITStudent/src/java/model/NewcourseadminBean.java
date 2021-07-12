package model;

//import sql classes
import java.sql.*;


//class definition
public class NewcourseadminBean {

    //global variables
    public String title;
    public String description;

    //getter setter methods for variables defined
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
            PreparedStatement smt = con.prepareStatement("insert into e_course values(?,?,?)");
            smt.setInt(1,1);
            smt.setString(2, title);
            smt.setString(3, description);
            smt.executeUpdate();
            return 1;
        } catch (Exception e) {
         return 0;
        }
    }
}
