package ca.bytetube.web.servlet;

import ca.bytetube.service.UserService;
import ca.bytetube.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DelUserServlet")
public class DelUserServlet extends HttpServlet {
    private UserService service = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取前端数据
        String id = request.getParameter("id");
        //2.调用service
        service.delUser(id);

        //3.跳转到查询所有用户
        response.sendRedirect(request.getContextPath()+"/UserLIstServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
