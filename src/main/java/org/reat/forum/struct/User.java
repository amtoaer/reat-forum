package org.reat.forum.struct;

public class User {
  private long uid;
  private String uavatar;
  private String uname;

  public User(long uid, String uavatar, String uname) {
    this.uid = uid;
    this.uavatar = uavatar;
    this.uname = uname;
  }

  public long getUid() {
    return this.uid;
  }

  public String getUavatar() {
    return this.uavatar;
  }

  public String getUname() {
    return this.uname;
  }
}
