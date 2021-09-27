package ca.bytetube.web.servlet;

import ca.bytetube.domain.User;
import ca.bytetube.service.UserService;
import ca.bytetube.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FindUserServlet")
public class FindUserServlet extends HttpServlet {
    UserService service = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取用户id
        String id = request.getParameter("id");
        System.out.println("id: "+ id);
        //2.调用service方法
        User user = service.findUserById(Integer.parseInt(id));

        //3.将user存入request域中
        request.setAttribute("user",user);

        //4.转发到update.jsp页面中
        request.getRequestDispatcher("/update.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
