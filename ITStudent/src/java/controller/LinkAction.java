package controller;

//necessary imports

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.actions.DispatchAction;

/*
class extends org.apache.struts.actions.DispatchAction to dispatch the request to another.
This is used specifically in context with tiles framework designed under struts.
*/

public class LinkAction extends DispatchAction {

    //Initialised values are mapped in/from struts-config.xml
    private final static String ABOUTUS = "aboutus_linkaction";
    private final static String TERMS_CONDITIONS = "terms_conditions_linkaction";
    private final static String CONTACT_US = "contact_us_linkaction";
    private final static String DASHBOARD = "dashboard_linkaction";
    private final static String MESSAGES = "messages_linkaction";
    private final static String SAVED_FILES = "saved_files_linkaction";
    private final static String UPLOAD_FILES = "upload_files_linkaction";
    private final static String NOTES = "notes_linkaction";
    private final static String LIST_ALL = "list_all_linkaction";
    private final static String MOCK_TEST = "mock_test_linkaction";  
    private final static String ADMIN_USERACCOUNTS = "admin_useraccounts_linkaction";
    private final static String ADMIN_ADMINLIST = "admin_adminlist_linkaction";
    private final static String ADMIN_SAVEDFILES = "admin_savedfiles_linkaction";
    private final static String ADMIN_UPLOADFILES = "admin_uploadfiles_linkaction";
    private final static String ADMIN_CREATENEWE_COURSES = "admin_createnewe_courses_linkaction";
    private final static String ADMIN_LISTALLE_COURSES = "admin_listalle_courses_linkaction";
    private final static String ADMIN_CREATEMOCKTEST = "admin_createmocktest_linkaction";

    //
    //ActionForward methods to forward the request. The initialized value is specified in struts-config.xml.
    //

    public ActionForward aboutus(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ABOUTUS);
    }

    public ActionForward terms_conditions(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(TERMS_CONDITIONS);
    }

    public ActionForward contact_us(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(CONTACT_US);
    }

    public ActionForward dashboard(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(DASHBOARD);
    }

    public ActionForward messages(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(MESSAGES);
    }

    public ActionForward saved_files(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(SAVED_FILES);
    }

    public ActionForward upload_files(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(UPLOAD_FILES);
    }

    public ActionForward notes(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(NOTES);
    }

    public ActionForward list_all(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(LIST_ALL);
    }

    public ActionForward mock_test(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(MOCK_TEST);
    }

    public ActionForward auacc(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_USERACCOUNTS);
    }

    public ActionForward aalist(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_ADMINLIST);
    }

    public ActionForward asavedfiles(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_SAVEDFILES);
    }

    public ActionForward auploadfiles(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_UPLOADFILES);
    }

    public ActionForward acrnwcrses(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_CREATENEWE_COURSES);
    }

    public ActionForward alisallcrses(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_LISTALLE_COURSES);
    }

    public ActionForward acrmcktst(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        return mapping.findForward(ADMIN_CREATEMOCKTEST);
    }
}
