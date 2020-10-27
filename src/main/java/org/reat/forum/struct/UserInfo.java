package org.reat.forum.struct;

public class UserInfo {
  private String uname;
  private String upassword;
  private String uavatar;
  private String usign;

  public UserInfo(String uname, String upassword, String uavatar, String usign) {
    this.uname = uname;
    this.upassword = upassword;
    this.uavatar = uavatar;
    this.usign = usign;
  }

  public String getUname() {
    return uname;
  }

  public String getUpassword() {
    return upassword;
  }

  public String getUavatar() {
    return uavatar;
  }

  public String getUsign() {
    return usign;
  }
}
