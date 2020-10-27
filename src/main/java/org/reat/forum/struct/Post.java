package org.reat.forum.struct;

import java.sql.Date;

public class Post {
  private long pid;
  private String ptitle;
  private Date pdate;
  private int pcomment;

  public Post(long pid, String ptitle, Date pdate, int pcomment) {
    this.pid = pid;
    this.ptitle = ptitle;
    this.pdate = pdate;
    this.pcomment = pcomment;
  }

  public long getPid() {
    return pid;
  }

  public String getPtitle() {
    return ptitle;
  }

  public Date getPdate() {
    return pdate;
  }

  public int getPcomment() {
    return pcomment;
  }
}
