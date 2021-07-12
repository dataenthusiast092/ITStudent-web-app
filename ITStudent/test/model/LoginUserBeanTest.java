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
public class LoginUserBeanTest {

    public LoginUserBeanTest() {
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
     * Test of getPassword_u method, of class LoginUserBean.
     */
    @Test
    public void testGetPassword_u() {
        System.out.println("getPassword_u");
        LoginUserBean instance = new LoginUserBean();
        String expResult = "";
        String result = instance.getPassword_u();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPassword_u method, of class LoginUserBean.
     */
    @Test
    public void testSetPassword_u() {
        System.out.println("setPassword_u");
        String password_u = "";
        LoginUserBean instance = new LoginUserBean();
        instance.setPassword_u(password_u);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUsername_u method, of class LoginUserBean.
     */
    @Test
    public void testGetUsername_u() {
        System.out.println("getUsername_u");
        LoginUserBean instance = new LoginUserBean();
        String expResult = "";
        String result = instance.getUsername_u();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUsername_u method, of class LoginUserBean.
     */
    @Test
    public void testSetUsername_u() {
        System.out.println("setUsername_u");
        String username_u = "";
        LoginUserBean instance = new LoginUserBean();
        instance.setUsername_u(username_u);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of validateu method, of class LoginUserBean.
     */
    @Test
    public void testValidateu() {
        System.out.println("validateu");
        LoginUserBean instance = new LoginUserBean();
        int expResult = 0;
        int result = instance.validateu();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}