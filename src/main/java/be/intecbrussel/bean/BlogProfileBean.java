package be.intecbrussel.bean;

import java.util.Objects;

public class BlogProfileBean {
    private int PK_profile;
    private String login_name;
    private String login_secondNm;
    private String nickname;
    private String emailAddrs;

    public BlogProfileBean(int PK_profile, String login_name, String login_secondNm, String nickname, String emailAddrs) {
        this.PK_profile = PK_profile;
        this.login_name = login_name;
        this.login_secondNm = login_secondNm;
        this.nickname = nickname;
        this.emailAddrs = emailAddrs;
    }

    public BlogProfileBean() {

    }

    public String getLogin_name() {
        return login_name;
    }

    public void setLogin_name(String login_name) {
        this.login_name = login_name;
    }

    public String getLogin_secondNm() {
        return login_secondNm;
    }

    public void setLogin_secondNm(String login_secondNm) {
        this.login_secondNm = login_secondNm;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmailAddrs() {
        return emailAddrs;
    }

    public void setEmailAddrs(String emailAddrs) {
        this.emailAddrs = emailAddrs;
    }

    public int getPK_profile() {
        return PK_profile;
    }

    public void setPK_profile(int PK_profile) {
        this.PK_profile = PK_profile;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof BlogProfileBean)) return false;
        BlogProfileBean that = (BlogProfileBean) o;
        return getPK_profile() == that.getPK_profile() &&
                getLogin_name().equals(that.getLogin_name()) &&
                getLogin_secondNm().equals(that.getLogin_secondNm()) &&
                getNickname().equals(that.getNickname()) &&
                getEmailAddrs().equals(that.getEmailAddrs());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getPK_profile(), getLogin_name(), getLogin_secondNm(), getNickname(), getEmailAddrs());
    }

    @Override
    public String toString() {
        return "BlogProfileBean{" +
                "PK_profile=" + PK_profile +
                ", login_name='" + login_name + '\'' +
                ", login_secondNm='" + login_secondNm + '\'' +
                ", nickname='" + nickname + '\'' +
                ", emailAddrs='" + emailAddrs + '\'' +
                '}';
    }
}
