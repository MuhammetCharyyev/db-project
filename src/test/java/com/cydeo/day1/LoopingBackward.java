package com.cydeo.day1;

import java.sql.*;

public class LoopingBackward {

    public static void main(String[] args) throws SQLException {

        // print all Employees Employee_ID and First_Name backward
        // SELECT * FROM EMPLOYEES  (do not sort this)

        String url = "jdbc:oracle:thin:@54.236.150.168:1521:XE";
        String username = "hr";
        String password = "hr";

        Connection connection = DriverManager.getConnection(url, username, password);
        //creating statement this way will only allow to get ResultSet that forward
        //only when we execute Query -> Statement stmt = conn.createStatement();
        //in order to be able to move through any row in any ResultSet
        //with the help of ResultSet navigation method like next, previous, absolute
        //we need to create Statement object in below way
        Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                                     ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmt.executeQuery("SELECT * FROM EMPLOYEES");

        //use afterLast() method to go to after last location
        //use previous() method to move backward and check whether we have a valid previous row
        //stop if there is no more valid row
        rs.afterLast();
        //use backward 'while loop'
        while (rs.previous()) {
            System.out.println(rs.getString("EMPLOYEE_ID")+" "
            +rs.getString("FIRST_NAME"));
            //will print all  IDs and first names of employees in table in backward order
        }

    }

}
