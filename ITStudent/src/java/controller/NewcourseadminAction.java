package controller;


//necessary imports
import model.NewcourseadminBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.DynaActionForm;

//class definition that extends Action
public class NewcourseadminAction extends org.apache.struts.action.Action {

    private final static String SUCCESS = "success";
    private final static String FAIL = "fail";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //Dynamic Action Forms are created when defined in strut-config.xml
        DynaActionForm newe_courseForm = (DynaActionForm) form;
        String title = newe_courseForm.get("coursetitle").toString();
        String description = newe_courseForm.get("coursedescription").toString();

        //DAO class's object
        NewcourseadminBean ncab = new NewcourseadminBean();
        ncab.setTitle(title);
        ncab.setDescription(description);
        int i = ncab.validate();

        //condition is checked, if 1 is returned from DAO class.
        if (i == 1) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(FAIL);
        }
    }
}
