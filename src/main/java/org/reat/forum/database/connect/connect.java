package org.reat.forum.database.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class connect {
  // 暂且先这样写，将来应该需要支持从文件读取
  private static String url = "jdbc:mysql://localhost:3306/reatforum";
  private static String user = "root";
  private static String password = "Liuwenxing1!";

  public static Connection get() {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      return DriverManager.getConnection(url, user, password);
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }
}
