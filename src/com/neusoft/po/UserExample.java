package com.neusoft.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUnameIsNull() {
            addCriterion("uname is null");
            return (Criteria) this;
        }

        public Criteria andUnameIsNotNull() {
            addCriterion("uname is not null");
            return (Criteria) this;
        }

        public Criteria andUnameEqualTo(String value) {
            addCriterion("uname =", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotEqualTo(String value) {
            addCriterion("uname <>", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThan(String value) {
            addCriterion("uname >", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThanOrEqualTo(String value) {
            addCriterion("uname >=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThan(String value) {
            addCriterion("uname <", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThanOrEqualTo(String value) {
            addCriterion("uname <=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLike(String value) {
            addCriterion("uname like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotLike(String value) {
            addCriterion("uname not like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameIn(List<String> values) {
            addCriterion("uname in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotIn(List<String> values) {
            addCriterion("uname not in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameBetween(String value1, String value2) {
            addCriterion("uname between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotBetween(String value1, String value2) {
            addCriterion("uname not between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUpwdIsNull() {
            addCriterion("upwd is null");
            return (Criteria) this;
        }

        public Criteria andUpwdIsNotNull() {
            addCriterion("upwd is not null");
            return (Criteria) this;
        }

        public Criteria andUpwdEqualTo(String value) {
            addCriterion("upwd =", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotEqualTo(String value) {
            addCriterion("upwd <>", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdGreaterThan(String value) {
            addCriterion("upwd >", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdGreaterThanOrEqualTo(String value) {
            addCriterion("upwd >=", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLessThan(String value) {
            addCriterion("upwd <", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLessThanOrEqualTo(String value) {
            addCriterion("upwd <=", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdLike(String value) {
            addCriterion("upwd like", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotLike(String value) {
            addCriterion("upwd not like", value, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdIn(List<String> values) {
            addCriterion("upwd in", values, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotIn(List<String> values) {
            addCriterion("upwd not in", values, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdBetween(String value1, String value2) {
            addCriterion("upwd between", value1, value2, "upwd");
            return (Criteria) this;
        }

        public Criteria andUpwdNotBetween(String value1, String value2) {
            addCriterion("upwd not between", value1, value2, "upwd");
            return (Criteria) this;
        }

        public Criteria andRenqiIsNull() {
            addCriterion("renqi is null");
            return (Criteria) this;
        }

        public Criteria andRenqiIsNotNull() {
            addCriterion("renqi is not null");
            return (Criteria) this;
        }

        public Criteria andRenqiEqualTo(Integer value) {
            addCriterion("renqi =", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiNotEqualTo(Integer value) {
            addCriterion("renqi <>", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiGreaterThan(Integer value) {
            addCriterion("renqi >", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiGreaterThanOrEqualTo(Integer value) {
            addCriterion("renqi >=", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiLessThan(Integer value) {
            addCriterion("renqi <", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiLessThanOrEqualTo(Integer value) {
            addCriterion("renqi <=", value, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiIn(List<Integer> values) {
            addCriterion("renqi in", values, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiNotIn(List<Integer> values) {
            addCriterion("renqi not in", values, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiBetween(Integer value1, Integer value2) {
            addCriterion("renqi between", value1, value2, "renqi");
            return (Criteria) this;
        }

        public Criteria andRenqiNotBetween(Integer value1, Integer value2) {
            addCriterion("renqi not between", value1, value2, "renqi");
            return (Criteria) this;
        }

        public Criteria andJifenIsNull() {
            addCriterion("jifen is null");
            return (Criteria) this;
        }

        public Criteria andJifenIsNotNull() {
            addCriterion("jifen is not null");
            return (Criteria) this;
        }

        public Criteria andJifenEqualTo(Integer value) {
            addCriterion("jifen =", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenNotEqualTo(Integer value) {
            addCriterion("jifen <>", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenGreaterThan(Integer value) {
            addCriterion("jifen >", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenGreaterThanOrEqualTo(Integer value) {
            addCriterion("jifen >=", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenLessThan(Integer value) {
            addCriterion("jifen <", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenLessThanOrEqualTo(Integer value) {
            addCriterion("jifen <=", value, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenIn(List<Integer> values) {
            addCriterion("jifen in", values, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenNotIn(List<Integer> values) {
            addCriterion("jifen not in", values, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenBetween(Integer value1, Integer value2) {
            addCriterion("jifen between", value1, value2, "jifen");
            return (Criteria) this;
        }

        public Criteria andJifenNotBetween(Integer value1, Integer value2) {
            addCriterion("jifen not between", value1, value2, "jifen");
            return (Criteria) this;
        }

        public Criteria andFensIsNull() {
            addCriterion("fens is null");
            return (Criteria) this;
        }

        public Criteria andFensIsNotNull() {
            addCriterion("fens is not null");
            return (Criteria) this;
        }

        public Criteria andFensEqualTo(Integer value) {
            addCriterion("fens =", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensNotEqualTo(Integer value) {
            addCriterion("fens <>", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensGreaterThan(Integer value) {
            addCriterion("fens >", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensGreaterThanOrEqualTo(Integer value) {
            addCriterion("fens >=", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensLessThan(Integer value) {
            addCriterion("fens <", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensLessThanOrEqualTo(Integer value) {
            addCriterion("fens <=", value, "fens");
            return (Criteria) this;
        }

        public Criteria andFensIn(List<Integer> values) {
            addCriterion("fens in", values, "fens");
            return (Criteria) this;
        }

        public Criteria andFensNotIn(List<Integer> values) {
            addCriterion("fens not in", values, "fens");
            return (Criteria) this;
        }

        public Criteria andFensBetween(Integer value1, Integer value2) {
            addCriterion("fens between", value1, value2, "fens");
            return (Criteria) this;
        }

        public Criteria andFensNotBetween(Integer value1, Integer value2) {
            addCriterion("fens not between", value1, value2, "fens");
            return (Criteria) this;
        }

        public Criteria andFoucIsNull() {
            addCriterion("fouc is null");
            return (Criteria) this;
        }

        public Criteria andFoucIsNotNull() {
            addCriterion("fouc is not null");
            return (Criteria) this;
        }

        public Criteria andFoucEqualTo(Integer value) {
            addCriterion("fouc =", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucNotEqualTo(Integer value) {
            addCriterion("fouc <>", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucGreaterThan(Integer value) {
            addCriterion("fouc >", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucGreaterThanOrEqualTo(Integer value) {
            addCriterion("fouc >=", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucLessThan(Integer value) {
            addCriterion("fouc <", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucLessThanOrEqualTo(Integer value) {
            addCriterion("fouc <=", value, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucIn(List<Integer> values) {
            addCriterion("fouc in", values, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucNotIn(List<Integer> values) {
            addCriterion("fouc not in", values, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucBetween(Integer value1, Integer value2) {
            addCriterion("fouc between", value1, value2, "fouc");
            return (Criteria) this;
        }

        public Criteria andFoucNotBetween(Integer value1, Integer value2) {
            addCriterion("fouc not between", value1, value2, "fouc");
            return (Criteria) this;
        }

        public Criteria andLogoIsNull() {
            addCriterion("logo is null");
            return (Criteria) this;
        }

        public Criteria andLogoIsNotNull() {
            addCriterion("logo is not null");
            return (Criteria) this;
        }

        public Criteria andLogoEqualTo(String value) {
            addCriterion("logo =", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotEqualTo(String value) {
            addCriterion("logo <>", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThan(String value) {
            addCriterion("logo >", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoGreaterThanOrEqualTo(String value) {
            addCriterion("logo >=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThan(String value) {
            addCriterion("logo <", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLessThanOrEqualTo(String value) {
            addCriterion("logo <=", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoLike(String value) {
            addCriterion("logo like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotLike(String value) {
            addCriterion("logo not like", value, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoIn(List<String> values) {
            addCriterion("logo in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotIn(List<String> values) {
            addCriterion("logo not in", values, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoBetween(String value1, String value2) {
            addCriterion("logo between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andLogoNotBetween(String value1, String value2) {
            addCriterion("logo not between", value1, value2, "logo");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andShengfenIsNull() {
            addCriterion("shengfen is null");
            return (Criteria) this;
        }

        public Criteria andShengfenIsNotNull() {
            addCriterion("shengfen is not null");
            return (Criteria) this;
        }

        public Criteria andShengfenEqualTo(String value) {
            addCriterion("shengfen =", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenNotEqualTo(String value) {
            addCriterion("shengfen <>", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenGreaterThan(String value) {
            addCriterion("shengfen >", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenGreaterThanOrEqualTo(String value) {
            addCriterion("shengfen >=", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenLessThan(String value) {
            addCriterion("shengfen <", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenLessThanOrEqualTo(String value) {
            addCriterion("shengfen <=", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenLike(String value) {
            addCriterion("shengfen like", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenNotLike(String value) {
            addCriterion("shengfen not like", value, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenIn(List<String> values) {
            addCriterion("shengfen in", values, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenNotIn(List<String> values) {
            addCriterion("shengfen not in", values, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenBetween(String value1, String value2) {
            addCriterion("shengfen between", value1, value2, "shengfen");
            return (Criteria) this;
        }

        public Criteria andShengfenNotBetween(String value1, String value2) {
            addCriterion("shengfen not between", value1, value2, "shengfen");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}