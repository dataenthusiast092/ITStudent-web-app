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
public class LinkActionTest {

    public LinkActionTest() {
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
     * Test of aboutus method, of class LinkAction.
     */
    @Test
    public void testAboutus() throws Exception {
        System.out.println("aboutus");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.aboutus(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of terms_conditions method, of class LinkAction.
     */
    @Test
    public void testTerms_conditions() throws Exception {
        System.out.println("terms_conditions");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.terms_conditions(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of contact_us method, of class LinkAction.
     */
    @Test
    public void testContact_us() throws Exception {
        System.out.println("contact_us");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.contact_us(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of dashboard method, of class LinkAction.
     */
    @Test
    public void testDashboard() throws Exception {
        System.out.println("dashboard");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.dashboard(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of edit_info method, of class LinkAction.
     */
    @Test
    public void testEdit_info() throws Exception {
        System.out.println("edit_info");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.edit_info(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of messages method, of class LinkAction.
     */
    @Test
    public void testMessages() throws Exception {
        System.out.println("messages");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.messages(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of saved_files method, of class LinkAction.
     */
    @Test
    public void testSaved_files() throws Exception {
        System.out.println("saved_files");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.saved_files(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of upload_files method, of class LinkAction.
     */
    @Test
    public void testUpload_files() throws Exception {
        System.out.println("upload_files");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.upload_files(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of notes method, of class LinkAction.
     */
    @Test
    public void testNotes() throws Exception {
        System.out.println("notes");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.notes(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of list_all method, of class LinkAction.
     */
    @Test
    public void testList_all() throws Exception {
        System.out.println("list_all");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.list_all(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of registered_courses method, of class LinkAction.
     */
    @Test
    public void testRegistered_courses() throws Exception {
        System.out.println("registered_courses");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.registered_courses(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of mock_test method, of class LinkAction.
     */
    @Test
    public void testMock_test() throws Exception {
        System.out.println("mock_test");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.mock_test(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of auacc method, of class LinkAction.
     */
    @Test
    public void testAuacc() throws Exception {
        System.out.println("auacc");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.auacc(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of alogs method, of class LinkAction.
     */
    @Test
    public void testAlogs() throws Exception {
        System.out.println("alogs");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.alogs(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of aalist method, of class LinkAction.
     */
    @Test
    public void testAalist() throws Exception {
        System.out.println("aalist");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.aalist(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of asavedfiles method, of class LinkAction.
     */
    @Test
    public void testAsavedfiles() throws Exception {
        System.out.println("asavedfiles");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.asavedfiles(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of auploadfiles method, of class LinkAction.
     */
    @Test
    public void testAuploadfiles() throws Exception {
        System.out.println("auploadfiles");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.auploadfiles(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of acrnwcrses method, of class LinkAction.
     */
    @Test
    public void testAcrnwcrses() throws Exception {
        System.out.println("acrnwcrses");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.acrnwcrses(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of alisallcrses method, of class LinkAction.
     */
    @Test
    public void testAlisallcrses() throws Exception {
        System.out.println("alisallcrses");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.alisallcrses(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of acrmcktst method, of class LinkAction.
     */
    @Test
    public void testAcrmcktst() throws Exception {
        System.out.println("acrmcktst");
        ActionMapping mapping = null;
        ActionForm form = null;
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        LinkAction instance = new LinkAction();
        ActionForward expResult = null;
        ActionForward result = instance.acrmcktst(mapping, form, request, response);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}