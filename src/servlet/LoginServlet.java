package servlet;

import dao.UserDao;
import domain.User;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.设置request编码
        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String checkCode = request.getParameter("checkCode");

        //3.先获取生成的验证码

        HttpSession session = request.getSession();

        String checkCode_session = (String) session.getAttribute("checkCode_session");

        session.removeAttribute("checkCode_session");
        //3.先判断验证码是否正确

        if (checkCode_session != null && checkCode_session.equalsIgnoreCase(checkCode)) {
            //忽略大小写比较
            //验证码正确
            //判断用户名和密码是否一致
            User loginUser = new User();
            loginUser.setUsername(username);
            loginUser.setPassword(password);
            UserDao userDao = new UserDao();
            User user = userDao.login(loginUser);
            if (user == null) {
                //登陆失败  没有查询到该用户
                request.setAttribute("login_error","用户名或密码错误");
            } else {
                session.setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/success.jsp");
            }
        } else {//验证码不一致
            //存储提示信息到request

            request.getSession().setAttribute("cc_error", "验证码错误");
            //转发到登录页面
            request.getRequestDispatcher("/loginx.jsp").forward(request, response);


        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
