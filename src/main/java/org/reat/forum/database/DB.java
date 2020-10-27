package org.reat.forum.database;

import org.reat.forum.database.connect.Connect;
import org.reat.forum.struct.Comment;
import org.reat.forum.struct.Post;
import org.reat.forum.struct.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DB {
  private static Connection conn = Connect.get();

  public static User login(String account, String password) {
    try (PreparedStatement ps =
        conn.prepareStatement(
            "SELECT uid,uavatar,uname FROM user WHERE uaccount=? AND upassword=?")) {
      ps.setObject(1, account);
      ps.setObject(2, password);
      try (ResultSet rs = ps.executeQuery()) {
        if (rs.next()) {
          return new User(rs.getLong("uid"), rs.getString("uavatar"), rs.getString("uname"));
        } else {
          return null;
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  public static List<Post> getPostPage(int page) {
    List<Post> result = new ArrayList<>();
    try (PreparedStatement ps =
        conn.prepareStatement(
            "SELECT pid,ptitle,pdate,pcomment FROM post ORDER BY pdate DESC LIMIT 10 OFFSET ?")) {
      ps.setObject(1, (page - 1) * 10);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          result.add(
              new Post(
                  rs.getLong("pid"),
                  rs.getString("ptitle"),
                  rs.getDate("pdate"),
                  rs.getInt("pcomment")));
        }
        return result;
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return new ArrayList<Post>();
    }
  }
  // 用于获取某条Comment回复的评论（仅支持单层递归回复）
  private static Comment getSingleComment(long cid) {
    try (PreparedStatement ps =
        conn.prepareStatement("SELECT ccontent,cdate FROM comment WHERE cid=?")) {
      ps.setObject(1, cid);
      try (ResultSet rs = ps.executeQuery()) {
        if (rs.next()) {
          return new Comment(rs.getString("ccontent"), rs.getDate("cdate"), null);
        } else {
          return null;
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    }
  }

  public static List<Comment> getPostComment(long pid, int page) {
    List<Comment> result = new ArrayList<>();
    try (PreparedStatement ps =
        conn.prepareStatement(
            "SELECT ccontent,cdate,cpre FROM comment WHERE pid = ? ORDER BY cdate DESC LIMIT 10 OFFSET ?")) {
      ps.setObject(1, pid);
      ps.setObject(2, (page - 1) * 10);
      try (ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
          result.add(
              new Comment(
                  rs.getString("ccontent"),
                  rs.getDate("cdate"),
                  getSingleComment(rs.getLong("cpre"))));
        }
        return result;
      }
    } catch (SQLException e) {
      e.printStackTrace();
      return new ArrayList<Comment>();
    }
  }
}
