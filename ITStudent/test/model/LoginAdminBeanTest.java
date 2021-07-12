/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author DELL
 */
public class LoginAdminBeanTest {

    public LoginAdminBeanTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of getPassword_a method, of class LoginAdminBean.
     */
    @Test
    public void testGetPassword_a() {
        System.out.println("getPassword_a");
        LoginAdminBean instance = new LoginAdminBean();
        String expResult = "";
        String result = instance.getPassword_a();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPassword_a method, of class LoginAdminBean.
     */
    @Test
    public void testSetPassword_a() {
        System.out.println("setPassword_a");
        String password_a = "";
        LoginAdminBean instance = new LoginAdminBean();
        instance.setPassword_a(password_a);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUsername_a method, of class LoginAdminBean.
     */
    @Test
    public void testGetUsername_a() {
        System.out.println("getUsername_a");
        LoginAdminBean instance = new LoginAdminBean();
        String expResult = "";
        String result = instance.getUsername_a();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUsername_a method, of class LoginAdminBean.
     */
    @Test
    public void testSetUsername_a() {
        System.out.println("setUsername_a");
        String username_a = "";
        LoginAdminBean instance = new LoginAdminBean();
        instance.setUsername_a(username_a);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of validate method, of class LoginAdminBean.
     */
    @Test
    public void testValidate() {
        System.out.println("validate");
        LoginAdminBean instance = new LoginAdminBean();
        int expResult = 0;
        int result = instance.validate();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}