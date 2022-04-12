package com.cydeo.day1;

import java.sql.*;

public class SimpleNavigation {

    public static void main(String[] args) throws SQLException {

        //step1 : create connection by connection information
        // this connection jdbc url , also known as connection string
        // syntax look like this jdbc:DataBaseType:subprotocal:@Host:port:SID
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


        Connection connection = DriverManager.getConnection(url, username, password);
        //as getConnection is exception we'll declare it with throw
        System.out.println("Connection is successful");

        //once we have connection we can use this connection object to

        Statement statement = connection.createStatement();

        //once we have Statement object we can execute query to get ResulSet
        //ResultSet object store all the row date
        //it uses iterator to move through the row using cursor

        ResultSet rs = statement.executeQuery("select * from REGIONS");

        //by default the pointer(cursor) of the ResultSet object is at location known
        // as BeforeFirst, right before the first row in order to get the to first row
        //you need to call next() method
        rs.next();// now we are at the first row

        //resulting data has 2 column REGION_ID, REGION_NAME// it is data of first row
        //in order to access to cell value we use getX (X here is data type)method
        //that accept 1 parameter, either using column name or using 1 based index
        //getString, getInt, getDouble and so on
        System.out.println("rs.getString(\"REGION_ID\") = "
                + rs.getString("REGION_ID")); //1
        //first column of the 1 row
        System.out.println("rs.getString(\"REGION_NAME\") = "
                + rs.getString("REGION_NAME")); //Europe
        //second column of the 1 row

        //you can also use column index
        System.out.println("rs.getString(1) = " + rs.getString(1));
        //first column of the 1 row
        System.out.println("rs.getString(2) = " + rs.getString(2));
        //second column of the 1 row

        rs.next();//now we move to the next row by declaring rs.next()
        System.out.println("rs.getString(\"REGION_ID\") = "
                + rs.getString("REGION_ID")); //2
        //first column of the 2 row
        System.out.println("rs.getString(\"REGION_NAME\") = "
                + rs.getString("REGION_NAME")); //Americas
        //second column of the 2 row

        rs.next();//now we move to the 3d row by declaring rs.next()
        System.out.println("rs.getString(\"REGION_ID\") = "
                + rs.getString("REGION_ID")); //3
        //first column of the 3 row
        System.out.println("rs.getString(\"REGION_NAME\") = "
                + rs.getString("REGION_NAME")); //Asia
        //second column of the 3 row

        rs.next();//now we move to the 4th row by declaring rs.next()
        System.out.println("rs.getString(\"REGION_ID\") = "
                + rs.getString("REGION_ID")); //4
        //first column of the 4 row
        System.out.println("rs.getString(\"REGION_NAME\") = "
                + rs.getString("REGION_NAME")); //Middle East and Africa
        //second column of the 4 row

        //now try to get cell value


    }

}
