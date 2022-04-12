package com.cydeo.day1;

import java.sql.*;



public class TestOracleConnection {

    public static void main(String[] args) {

        //step1 : create connection by connection information
        String url = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username = "hr";
        String password = "hr";

        // now JDBC Provide utility class called DriverManager with many methods
        // the getConnection method accept 3 parameters url , username, password
        // according this information ,
        // it will first look for the driver of the database type you are connecting to
        // once it's found , use the rest of connection information like
        // host ip , username password , port , sid to make connection
        // MAKE SURE YOUR CONNECTION WORK MANUALLY ,
        // ANYTHING DOES NOT WORK MANUALLY WILL NOT WORK AUTOMATION

        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            //as getConnection is exception we'll handle it with try/catch
            System.out.println("Connection is successful");
        } catch (SQLException e) {
            System.out.println("Connection has failed" + e.getMessage());;
        }

    }

}
