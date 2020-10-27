package org.reat.forum.servlets;

import org.reat.forum.database.DB;
import org.reat.forum.struct.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/forum")
public class Index extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException, ServletException {
    int page = Integer.parseInt(req.getParameter("page"));
    List<Post> list = DB.getPostPage(page);
    // 如果返回结果为空则说明页数非法，重定向到404页面
    if (list.isEmpty()) {
      resp.sendRedirect(req.getContextPath() + "/404.jsp");
    } else {
      // 为req绑定列表，通过内部的page.jsp进行渲染
      req.setAttribute("list", list);
      req.getRequestDispatcher("/WEB-INF/views/page.jsp").forward(req, resp);
    }
  }
}
