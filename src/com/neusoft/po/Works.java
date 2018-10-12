package com.neusoft.po;

import java.util.Date;

public class Works {
    private Integer id;

    private Integer user;

    private String name;

    private String type;

    private Integer gkrenshu;

    private Integer plrenshu;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getGkrenshu() {
        return gkrenshu;
    }

    public void setGkrenshu(Integer gkrenshu) {
        this.gkrenshu = gkrenshu;
    }

    public Integer getPlrenshu() {
        return plrenshu;
    }

    public void setPlrenshu(Integer plrenshu) {
        this.plrenshu = plrenshu;
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