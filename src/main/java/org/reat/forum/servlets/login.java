package org.reat.forum.servlets;

import org.reat.forum.database.db;
import org.reat.forum.struct.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/loginservlet")
public class login extends HttpServlet {
  private static final long serialVersionUID = 1;

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    String account = req.getParameter("account");
    String password = req.getParameter("password");
    User tmp;
    // 登陆成功
    if ((tmp = db.login(account, password)) != null) {
      req.getSession().setAttribute("user", tmp);
    }
    resp.sendRedirect(req.getContextPath() + "/index.jsp");
  }
}
