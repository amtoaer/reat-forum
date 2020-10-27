package org.reat.forum.struct;

import java.sql.Date;

public class Comment {
  private String ccontent;
  private Date cdate;
  private Comment cpre;

  public Comment(String ccontent, Date cdate, Comment cpre) {
    this.ccontent = ccontent;
    this.cdate = cdate;
    this.cpre = cpre;
  }

  public String getCcontent() {
    return ccontent;
  }

  public Date getCdate() {
    return cdate;
  }

  public Comment getCpre() {
    return cpre;
  }
}
