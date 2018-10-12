package com.neusoft.po;

import java.util.Date;

public class Letter {
    private Integer id;

    private Integer user;

    private Integer jieshou;

    private String neirong;

    private Date time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser() {
        return user;
    }

    public void setUser(Integer user) {
        this.user = user;
    }

    public Integer getJieshou() {
        return jieshou;
    }

    public void setJieshou(Integer jieshou) {
        this.jieshou = jieshou;
    }

    public String getNeirong() {
        return neirong;
    }

    public void setNeirong(String neirong) {
        this.neirong = neirong == null ? null : neirong.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}