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
public class NewcourseadminBeanTest {

    public NewcourseadminBeanTest() {
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
     * Test of getDescription method, of class NewcourseadminBean.
     */
    @Test
    public void testGetDescription() {
        System.out.println("getDescription");
        NewcourseadminBean instance = new NewcourseadminBean();
        String expResult = "";
        String result = instance.getDescription();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDescription method, of class NewcourseadminBean.
     */
    @Test
    public void testSetDescription() {
        System.out.println("setDescription");
        String description = "";
        NewcourseadminBean instance = new NewcourseadminBean();
        instance.setDescription(description);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTitle method, of class NewcourseadminBean.
     */
    @Test
    public void testGetTitle() {
        System.out.println("getTitle");
        NewcourseadminBean instance = new NewcourseadminBean();
        String expResult = "";
        String result = instance.getTitle();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTitle method, of class NewcourseadminBean.
     */
    @Test
    public void testSetTitle() {
        System.out.println("setTitle");
        String title = "";
        NewcourseadminBean instance = new NewcourseadminBean();
        instance.setTitle(title);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of validate method, of class NewcourseadminBean.
     */
    @Test
    public void testValidate() {
        System.out.println("validate");
        NewcourseadminBean instance = new NewcourseadminBean();
        int expResult = 0;
        int result = instance.validate();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}