package org.reat.forum.servlets;

import org.reat.forum.database.DB;
import org.reat.forum.struct.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/loginservlet")
public class Login extends HttpServlet {
  private static final long serialVersionUID = 1;

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    String account = req.getParameter("account");
    String password = req.getParameter("password");
    User tmp;
    // 登陆成功
    if ((tmp = DB.login(account, password)) != null) {
      req.getSession().setAttribute("user", tmp);
    } else {
      // 此处应重定向到登陆失败界面
    }
    resp.sendRedirect(req.getContextPath() + "/forum?page=1");
  }
}
