package org.reat.forum.database;

import org.reat.forum.database.connect.connect;
import org.reat.forum.struct.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class db {
  private static Connection conn = connect.get();

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
}
