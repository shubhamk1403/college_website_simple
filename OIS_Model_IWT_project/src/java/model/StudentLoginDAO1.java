/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

/**
 *
 * @author Bihar_Regiment
 */
public class StudentLoginDAO1 {
    public StudentPass getStudent(String roll){
        StudentPass stud = null;    
        try{
            String sql="select * from pass where roll='"+roll+"'";
            Context ctx =new InitialContext();
            DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/test");
            Connection con=ds.getConnection();
            Statement st = con.createStatement();
            ResultSet res=st.executeQuery(sql);
            while(res.next())
            {
                stud=new StudentPass(res.getString(1), res.getString(2), res.getString(3));
            }
            res.close();
            con.close();
            System.out.println(stud.getName()+" "+stud.getPass());
        }
        catch(SQLException | NamingException e){ 
            System.out.println("errrrr..."+e);
        }
        return stud;
    }
}
