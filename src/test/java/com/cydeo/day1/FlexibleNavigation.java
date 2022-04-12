package com.cydeo.day1;

import java.sql.*;

public class FlexibleNavigation {

    public static void main(String[] args) throws SQLException {

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
        ResultSet rs = stmt.executeQuery("SELECT * FROM REGIONS");

        /**
         *  * In order to access data in ResultSet object , we need to use cursor navigation methods :
         *
         * • next()
         * • previous()
         * • first()
         * • last()
         * • beferoFirst()
         * • afterLast()
         * • absolute(8)
         */

        rs.next();//row 1
        System.out.println("rs.next() " + rs.getString("REGION_ID") + " "
                                       + rs.getString("REGION_NAME"));
                                        //1 Europe

        rs.last(); //last row, 4th row in this case
        System.out.println("rs.last() "+ rs.getString("REGION_ID") + " "
                + rs.getString("REGION_NAME"));
                     //4 Middle East and Africa

        rs.first(); //back to row 1
        System.out.println("rs.first() " + rs.getString("REGION_ID") + " "
                            + rs.getString("REGION_NAME"));
                            //1 Europe

        rs.absolute(3); //let you move to particular row
        System.out.println("rs.absolute(3) " + rs.getString("REGION_ID") + " "
                + rs.getString("REGION_NAME"));
        //rs.absolute(3) 3 Asia

        rs.previous(); //goes to previous after 3 row, i.e. to 2 row
        System.out.println("rs.previous() " + rs.getString("REGION_ID") + " "
                + rs.getString("REGION_NAME"));
        //rs.previous() 2 Americas

//        rs.beforeFirst(); //before first location
//        System.out.println("rs.beforeFirst() " + rs.getString("REGION_ID") + " "
//                + rs.getString("REGION_NAME"));
        //will give you exception as nothing is in before first row

        rs.next(); //go to the first row again
        rs.afterLast();//now we are after last location, nothing is here
        rs.previous(); //last row
        System.out.println("rs.previous() " + rs.getString("REGION_ID") + " "
                + rs.getString("REGION_NAME"));

    }

}
