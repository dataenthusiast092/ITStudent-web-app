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
public class UsernotesBeanTest {

    public UsernotesBeanTest() {
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
     * Test of getUser method, of class UsernotesBean.
     */
    @Test
    public void testGetUser() {
        System.out.println("getUser");
        UsernotesBean instance = new UsernotesBean();
        String expResult = "";
        String result = instance.getUser();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUser method, of class UsernotesBean.
     */
    @Test
    public void testSetUser() {
        System.out.println("setUser");
        String user = "";
        UsernotesBean instance = new UsernotesBean();
        instance.setUser(user);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDescription method, of class UsernotesBean.
     */
    @Test
    public void testGetDescription() {
        System.out.println("getDescription");
        UsernotesBean instance = new UsernotesBean();
        String expResult = "";
        String result = instance.getDescription();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDescription method, of class UsernotesBean.
     */
    @Test
    public void testSetDescription() {
        System.out.println("setDescription");
        String description = "";
        UsernotesBean instance = new UsernotesBean();
        instance.setDescription(description);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTitle method, of class UsernotesBean.
     */
    @Test
    public void testGetTitle() {
        System.out.println("getTitle");
        UsernotesBean instance = new UsernotesBean();
        String expResult = "";
        String result = instance.getTitle();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTitle method, of class UsernotesBean.
     */
    @Test
    public void testSetTitle() {
        System.out.println("setTitle");
        String title = "";
        UsernotesBean instance = new UsernotesBean();
        instance.setTitle(title);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of validate method, of class UsernotesBean.
     */
    @Test
    public void testValidate() {
        System.out.println("validate");
        UsernotesBean instance = new UsernotesBean();
        int expResult = 0;
        int result = instance.validate();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}