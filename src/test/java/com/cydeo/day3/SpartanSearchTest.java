package com.cydeo.day3;

import com.cydeo.utility.DB_Util;
import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

public class SpartanSearchTest {

    /**
     * Background : on Spartan UI All Data page ,
     * Search functionality has been acting up
     * It does not always return correct result count
     * You opened the defect , it has been fixed
     * and yet it occasionally comes back again
     * Now you are writing automated test to make sure
     * it works all the times
     * few scenario you came up with:
     * search by gender should work
     * search by partial name should work
     * search by partial name + gender should
     */

    @Test
    public void testSearchByGender() {

        int actualResultMale = 54;
        int actualResultFemale = 47;

        // now get expected result from Database query
        // For Male :  SELECT COUNT(*) AS COUNT FROM SPARTANS WHERE GENDER = 'Male'
        // For Female :SELECT COUNT(*) AS COUNT FROM SPARTANS WHERE GENDER = 'Female'

        String url = "jdbc:oracle:thin:@18.215.145.203:1521:XE";
        String username = "SP";
        String password = "SP";

        DB_Util.createConnection(url, username, password);
        DB_Util.runQuery("SELECT COUNT(*) AS COUNT FROM SPARTANS WHERE GENDER = 'Male'");
        int expectedMaleResult =  Integer.parseInt( DB_Util.getFirstRowFirstColumn() )  ;

        //assertion
        assertEquals(actualResultMale, expectedMaleResult);

        DB_Util.runQuery("SELECT COUNT(*) AS COUNT FROM SPARTANS WHERE GENDER = 'Female'");
        int expectedFemaleResult =  Integer.parseInt( DB_Util.getFirstRowFirstColumn() )  ;

        //assertion
        assertEquals(actualResultFemale, expectedFemaleResult);


    }
}
