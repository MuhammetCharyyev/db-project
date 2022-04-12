package com.cydeo.day1;

import java.sql.*;

public class LoopingThroughResultSet {

    public static void main(String[] args)  {

        //step1 : create connection by connection information
        // this connection jdbc url , also known as connection string
        // syntax look like this jdbc:DataBaseType:subprotocal:@Host:port:SID
        String url = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username = "hr";
        String password = "hr";

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from REGIONS");
            //to run all rows in table we use 'while loop' until no more row
            //and rs.next will return false
            //rs.next move pointer to the next row and return true if there is
            //valid next row and false if no valid next row
            while (rs.next()){
                System.out.println("rs.getString(\"REGION_NAME\") = "
                        + rs.getString("REGION_NAME"));
            }
        } catch (SQLException e) {
            System.out.println("Exception occured " + e.getMessage());;
        }

    }

}
