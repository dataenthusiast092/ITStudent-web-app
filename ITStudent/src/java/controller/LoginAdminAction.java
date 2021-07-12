package controller;

//necessary imports
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginAdminBean;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.DynaActionForm;


//class extends Action
public class LoginAdminAction extends org.apache.struts.action.Action {

    private final static String SUCCESS_ADMIN = "admin";
    private final static String FAIL = "fail";
    String username_a;
    String password_a;

    //DAO class's object
    LoginAdminBean lab = new LoginAdminBean();

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        response.setHeader("cache-control","NOCACHE");
        HttpSession session = request.getSession();

        //Dynamic Action Forms are created when defined in strut-config.xml
        DynaActionForm loginForm = (DynaActionForm) form;
        username_a = loginForm.get("username").toString();
        password_a = loginForm.get("password").toString();

        //session value is set here
        session.setAttribute("user", username_a);
        lab.setUsername_a(username_a);
        lab.setPassword_a(password_a);
        int i = lab.validate();
        
        //condition is checked, if 1 is returned from DAO class.
        if (i == 1) {
            return mapping.findForward(SUCCESS_ADMIN);
        } else {
            return mapping.findForward(FAIL);
        }
    }
}
