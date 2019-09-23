package be.intecbrussel.bean;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public class BlogLoginBean implements Serializable {

    private int PK_login;
    private String userNameAuth;
    private String passAuth;

    public BlogLoginBean() {

    }

    public int getPK_login() {
        return PK_login;
    }

    public void setPK_login(int PK_login) {
        this.PK_login = PK_login;
    }

    public String getUserNameAuth() {
        return userNameAuth;
    }

    public void setUserNameAuth(String userNameAuth) {
        this.userNameAuth = userNameAuth;
    }

    public String getPassAuth() {
        return passAuth;
    }

    public void setPassAuth(String passAuth) {
        this.passAuth = passAuth;
    }

    public BlogLoginBean(int pk, String userName, String pass) {
        this.PK_login = pk;
        this.userNameAuth = userName;
        this.passAuth = pass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof BlogLoginBean)) return false;
        BlogLoginBean that = (BlogLoginBean) o;
        return PK_login == that.PK_login &&
                Objects.equals(getUserNameAuth(), that.getUserNameAuth()) &&
                Objects.equals(getPassAuth(), that.getPassAuth());
    }

    @Override
    public int hashCode() {
        return Objects.hash(PK_login, getUserNameAuth(), getPassAuth());
    }

    @Override
    public String toString() {
        return "BlogLoginBean{" +
                "PK_login=" + PK_login +
                ", userNameAuth='" + userNameAuth + '\'' +
                ", passAuth='" + passAuth + '\'' +
                '}';
    }

}
