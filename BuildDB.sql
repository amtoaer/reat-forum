-- 创建reatforum数据库
DROP DATABASE IF EXISTS reatforum;
CREATE DATABASE reatforum;

USE reatforum;

-- 创建用户表
CREATE TABLE user(
    uid BIGINT AUTO_INCREMENT NOT NULL,
    uname VARCHAR(20) NOT NULL,
    uaccount VARCHAR(20) NOT NULL,
    upassword VARCHAR(20) NOT NULL,
    uavatar VARCHAR(150) NOT NULL,
    usign VARCHAR(100),
    PRIMARY KEY (uid)
)CHARSET=UTF8;

-- 创建主题信息表
CREATE TABLE post(
    pid BIGINT AUTO_INCREMENT NOT NULL,
    ptitle VARCHAR(50) NOT NULL,
    pdate DATE NOT NULL,
    pcomment INT NOT NULL,
    PRIMARY KEY(pid)
)CHARSET=UTF8;

-- 创建评论信息表
CREATE TABLE comment(
    cid BIGINT AUTO_INCREMENT NOT NULL,
    uid BIGINT NOT NULL,
    pid BIGINT NOT NULL,
    ccontent VARCHAR(300) NOT NULL,
    cdate DATE NOT NULL,
    cpre BIGINT,
    PRIMARY KEY (cid),
    FOREIGN KEY (uid) REFERENCES user(uid),
    FOREIGN KEY (pid) REFERENCES post(pid)
)CHARSET=UTF8;