package ca.bytetube.web.servlet;

import ca.bytetube.domain.Admin;
import ca.bytetube.domain.User;
import ca.bytetube.service.UserService;
import ca.bytetube.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    UserService service = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取请求参数

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String checkCode = request.getParameter("checkCode");
        System.out.println(checkCode);
       //2.获取服务器端生成的验证码
        HttpSession session = request.getSession();
        String checkCode_session = (String)session.getAttribute("checkCode_session");
        session.removeAttribute("checkCode_session");
        System.out.println(checkCode_session);
        //3.封装对象
        Admin admin = new Admin();

        admin.setUsername(username);
        admin.setPassword(password);
        System.out.println(admin);

        //4.判断验证码是否一致
        if (checkCode_session!= null  && checkCode_session.equalsIgnoreCase(checkCode)) {
            // 调用service层的login
            Admin loginAdmin = service.adminLogin(admin);
            if (loginAdmin == null) {
                //fail
                request.setAttribute("login_error","username or password is wrong");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }else {
                //success
               session.setAttribute("admin",admin);
               //重定向
                response.sendRedirect(request.getContextPath()+"/findUserByPageServlet");

            }


        }else {//验证码不一致
            request.setAttribute("cc_error","check code is wrong");
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }


    }


}
