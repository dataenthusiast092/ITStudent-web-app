package controller;

//necessary imports
import model.UsernotesBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.DynaActionForm;

public class UsernotesAction extends org.apache.struts.action.Action {

    private final static String SUCCESS = "success";
    private final static String FAIL = "fail";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //session is requested
        HttpSession session = request.getSession();

        //session's value is stored here
        String user = (String)session.getAttribute("user");

        //Dynamic Action Forms are created when defined in strut-config.xml
        DynaActionForm newe_courseForm = (DynaActionForm) form;
        String title = newe_courseForm.get("notestitle").toString();
        String description = newe_courseForm.get("notesdescription").toString();

        //DAO class's object
        UsernotesBean unb = new UsernotesBean();
        unb.setTitle(title);
        unb.setDescription(description);
        unb.setUser(user);
        int i = unb.validate();

        //condition is checked, if 1 is returned from DAO class.
        if (i == 1) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(FAIL);
        }
    }
}
