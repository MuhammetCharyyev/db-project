package com.cydeo.day1;

import java.sql.*;

/**
 *  EC2 server already contain practice app called Spartan
 *  it has Oracle database with single table
 *  We can also check out UI by navigating to URL MyEC2ServerIP:8000
 *  IP is the same as HR database
 *  Username: SP
 *  Pass: SP
 */
public class SpartanDB_Test {
    public static void main(String[] args) throws SQLException {

        String url = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username = "SP";
        String password = "SP";

        Connection connection = DriverManager.getConnection(url, username, password);
        //creating statement this way will only allow to get ResultSet that forward
        //only when we execute Query -> Statement stmt = conn.createStatement();
        //in order to be able to move through any row in any ResultSet
        //with the help of ResultSet navigation method like next, previous, absolute
        //we need to create Statement object in below way
        Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                                    ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmt.executeQuery("SELECT * FROM SPARTANS");

        //this table has SPARTAN_ID, NAME, GENDER, CREATED_AT, UPDATED_AT
        while (rs.next()) {
            System.out.println(rs.getString("SPARTAN_ID") + " "
                    + rs.getString("NAME"));
        }

    }
}
