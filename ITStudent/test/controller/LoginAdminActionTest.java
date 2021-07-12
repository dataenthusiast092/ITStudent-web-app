/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
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
public class LoginAdminActionTest {

    public LoginAdminActionTest() {
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
     * Test of execute method, of class LoginAdminAction.
     */
    @Test
    public void testExecute() throws Exception {
        System.out.println("execute");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LoginAdminAction instance = new LoginAdminAction();
        ActionForward expResult = null;
        ActionForward result = instance.execute(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}