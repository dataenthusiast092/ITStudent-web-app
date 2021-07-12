package model;

//sql classes imported
import java.sql.*;

//class definition
public class RegisterBean {


    //global variables
    public String fname;
    public String lname;
    public String dob;
    public String gender;
    public String sQ;
    public String sA;
    public String username;
    public String password;


    //default constructor
    public RegisterBean() {
    }


    //getter setter methods of variables
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSA() {
        return sA;
    }

    public void setSA(String sA) {
        this.sA = sA;
    }

    public String getSQ() {
        return sQ;
    }

    public void setSQ(String sQ) {
        this.sQ = sQ;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    //validate method of type int, used to interact with db
    public int validate() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:ITStudent");
            PreparedStatement smt = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?)");
            smt.setInt(1, 1);
            smt.setString(2, fname);
            smt.setString(3, lname);
            smt.setString(4, dob);
            smt.setString(5, gender);
            smt.setString(6, sQ);
            smt.setString(7, sA);
            smt.setString(8, username);
            smt.setString(9, password);
            smt.executeUpdate();
            PreparedStatement smt2 = con.prepareStatement("insert into userlogin values(?,?,?)");
            smt2.setInt(1, 1);
            smt2.setString(2, username);
            smt2.setString(3, password);
            smt2.executeUpdate();
            return 1;
        } catch (Exception ex) {
            return 0;
        }
    }
}
