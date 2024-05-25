import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class connection {

    public static void main(String[] args)
    {
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",NIRBHAY_KUMAR\nirbh"system",nky123@##NK"oracle");
       Statement smt=con.createStatement();
       smt.executeUpdate("Create table emp(eno number,ename varchar(12),esal number)");
       con.close();
    }
        catch(ClassNotFoundException | SQLException e)
        {
System.out.println(e);
        }
    }
}