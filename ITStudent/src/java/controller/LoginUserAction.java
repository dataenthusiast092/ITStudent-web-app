package controller;

//necessary imports
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginUserBean;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.DynaActionForm;


//class definition of type Action
public class LoginUserAction extends org.apache.struts.action.Action {

    private final static String SUCCESS_USER = "user";
    private final static String FAIL = "fail";

    //DAO class's object
    LoginUserBean lub = new LoginUserBean();
    String username_u;
    String password_u;

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        response.setHeader("cache-control","NOCACHE");
        HttpSession session = request.getSession();

        //Dynamic Action Forms are created when defined in strut-config.xml
        DynaActionForm loginForm = (DynaActionForm) form;
        username_u = loginForm.get("username").toString();
        password_u = loginForm.get("password").toString();

        //session value is set here
        session.setAttribute("user", username_u);
        lub.setUsername_u(username_u);
        lub.setPassword_u(password_u);
        int j = lub.validateu();

        //condition is checked, if 1 is returned from DAO class.
        if (j == 1) {
            return mapping.findForward(SUCCESS_USER);
        } else {
            return mapping.findForward(FAIL);
        }


    }
}
