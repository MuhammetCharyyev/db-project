package OfficeHours_DB;

import java.sql.*;

public class JDBC {

    public static void main(String[] args) throws SQLException {
        //-- 1. get connection with hr database

        String url_hr = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username_hr = "hr";
        String password_hr = "hr";

        Connection conn_hr = DriverManager.getConnection(url_hr, username_hr, password_hr);
        Statement stmt_hr = conn_hr.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);

        //--     2. get connection with spartan database

        String url_sp = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username_sp = "SP";
        String password_sp = "SP";

        Connection conn_sp = DriverManager.getConnection(url_sp, username_sp, password_sp);
        Statement stmt_sp = conn_sp.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);

// 3. get top 2 first names from employees table using next() and different method
        ResultSet rs_hr = stmt_hr.executeQuery("SELECT first_name FROM EMPLOYEES");
        rs_hr.next();
            System.out.println(rs_hr.getString(1) );
        rs_hr.next();
        System.out.println(rs_hr.getString(1) );

//4. get top 3 phone numbers from spartans table using next() and different method

        ResultSet rs_sp = stmt_sp.executeQuery("SELECT * FROM SPARTANS");

        rs_sp.next();
        System.out.println(rs_sp.getString(4));
        rs_sp.next();
        System.out.println(rs_sp.getString("PHONE"));
        rs_sp.next();
        System.out.println(rs_sp.getString(4));

//5. get every country name from countries table
        ResultSet rs_hr1 = stmt_hr.executeQuery("SELECT COUNTRY_NAME FROM COUNTRIES");
       while (rs_hr1.next()) {
           System.out.println(rs_hr1.getString(1));
       }
//6. get every spartan name from spartans table

        ResultSet rs_sp1 = stmt_sp.executeQuery("SELECT NAME FROM SPARTANS");
        while (rs_sp1.next()) {
            System.out.println(rs_sp1.getString(1));
        }

//7. get me first department name from departments table
        ResultSet rs_hr2 = stmt_hr.executeQuery("SELECT DEPARTMENT_NAME FROM DEPARTMENTS");
        rs_hr2.next();
        System.out.println(rs_hr2.getString(1) );

//8. get me last street address from locations table
        ResultSet rs_hr3 = stmt_hr.executeQuery("SELECT STREET_ADDRESS FROM LOCATIONS");
        rs_hr3.last();
        System.out.println(rs_hr3.getString(1) );

//9. get me "ResultSet.next was not called" exception
        ResultSet rs_hr4 = stmt_hr.executeQuery("SELECT * FROM EMPLOYEES");
        System.out.println(rs_hr4.getString(1) );

//10. get me "Result set after last row" exception
        rs_hr4.afterLast();
        System.out.println(rs_hr4.getString(1) );

//11. get me 10th spartans's gender
        ResultSet rs_sp2 = stmt_sp.executeQuery("SELECT GENDER FROM SPARTANS");
        rs_sp2.absolute(10);
        System.out.println(rs_sp2.getString(1));

//12. get me 5th job_title from jobs table
        ResultSet rs_hr5 = stmt_hr.executeQuery("SELECT JOB_TITLE FROM JOBS");
        rs_hr5.absolute(5);
        System.out.println(rs_hr5.getString(1));

//13. get me the first created date(not including time) in spartans table
        ResultSet rs_sp3 = stmt_sp.executeQuery("SELECT CREATED_AT FROM SPARTANS");
        rs_sp3.next();
        System.out.println(rs_sp3.getString(1));

//14. get me 5th manager_id from departments table (dont' use getString() method)
        ResultSet rs_hr6 = stmt_hr.executeQuery("SELECT MANAGER_ID FROM DEPARTMENTS");
        rs_hr6.absolute(5);
        System.out.println(rs_hr6.getInt(1));

//15. get me the highest salary from employees table ( don't use getInt or getString method)
        ResultSet rs_hr7 = stmt_hr.executeQuery("SELECT max(SALARY) FROM EMPLOYEES");
        rs_hr7.next();
        System.out.println(rs_hr7.getDouble(1));

// 16. get me column numbers of spartans table/ using ResultSetMetaData to get data about data
        ResultSet rs_sp4 = stmt_sp.executeQuery("SELECT * FROM SPARTANS");
        ResultSetMetaData rsmd_sp = rs_sp4.getMetaData();
        System.out.println(rsmd_sp.getColumnCount());

//17. get me all column names from job_history table
        ResultSet rs_hr8 = stmt_hr.executeQuery("SELECT * FROM JOB_HISTORY");
        ResultSetMetaData rsmd_hr = rs_hr8.getMetaData();
        int columnCount = rsmd_hr.getColumnCount();
        for(int i = 1; i <=columnCount; i++) {//iterate each column by index
            System.out.println(rsmd_hr.getColumnName(i));//get each column name
        }

//18. value first country in countries table is Argentina (using db_util class)

// 19. value employees table has 107 row (using db_util class)
//20. get all data from locations table (using db_util class)

    }

}
