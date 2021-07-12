package controller;

//necessary imports
import model.RegisterBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

import org.apache.struts.action.DynaActionForm;


//class definition extends Action
public class RegisterAction extends org.apache.struts.action.Action {

    private final static String SUCCESS = "success";
    private final static String FAIL = "fail";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //Dynamic Action Forms are created when defined in strut-config.xml
        DynaActionForm registerForm = (DynaActionForm) form;
        String fname = registerForm.get("fname").toString();
        String lname = registerForm.get("lname").toString();
        String dob = registerForm.get("dob").toString();
        String gender = registerForm.get("gender").toString();
        String sQ = registerForm.get("sQ").toString();
        String sA = registerForm.get("sA").toString();
        String username = registerForm.get("username").toString();
        String password = registerForm.get("password").toString();

        //DAO class's object
        RegisterBean rb = new RegisterBean();
        rb.setFname(fname);
        rb.setLname(lname);
        rb.setDob(dob);
        rb.setGender(gender);
        rb.setSQ(sQ);
        rb.setSA(sA);
        rb.setUsername(username);
        rb.setPassword(password);
        int i = rb.validate();

        //condition is checked, if 1 is returned from DAO class.
        if(i == 1){
            return mapping.findForward(SUCCESS);
        }
        else{
            return mapping.findForward(FAIL);
        }
    }
}
