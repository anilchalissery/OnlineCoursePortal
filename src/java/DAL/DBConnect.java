/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Melvin
 */
public class DBConnect {
     static Connection con;
      public static int c_id=0;
	
     public static Connection Connect()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocp","root","");
                        System.out.println("connected ");
		}
		catch(Exception e)
		{
			System.out.println("class error");
                       
		}
		return con;
	}
        
        
        
       
       
         public static void  ExecuteQuery(String Query){
     try {
         Connection conn=Connect();
        Statement st=conn.createStatement();
       
            st.execute(Query);
        } catch (SQLException ex) {
            
            System.out.println(ex.toString());
            System.out.println(Query);
          System.out.println("Query Error");
        }
        
    }
         
           public static int  ExecuteQueryReturn(String Query){
               int PrimeNo =0;
            try {
                Connection conn=Connect();
               Statement st=conn.createStatement();
              PrimeNo = st.executeUpdate(Query, Statement.RETURN_GENERATED_KEYS);
                   
               } catch (SQLException ex) {

                   System.out.println(ex.toString());
                   System.out.println(Query);
                 System.out.println("Query Error");
               }
            return PrimeNo;
        
    }
    
    public static ResultSet  SelectData(String Query){
        
        ResultSet rs=null;
     try {
         Connection conn=Connect();
        Statement st=conn.createStatement();
       
           rs= st.executeQuery(Query);
        } catch (SQLException ex) {
            
            System.out.println(ex.toString());
          System.out.println("Query Error");
        }
     return rs;
        
    }
    
     public static String getDate(String Date ){
       
           
            String[] str=Date.split("/");
            String convertDate="20"+str[2]+"/"+str[1]+"/"+str[0];
            
           return convertDate;
       }
    
}
