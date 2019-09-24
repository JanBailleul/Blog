package be.intecbrussel.bean;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class BlogEmailBean {

    private int PK_email;
    private String nick;
    private String dest_user;
    private String msg;
    private LocalDateTime timestamp;

    public BlogEmailBean(int PK_email, String nick, String dest_user, String msg, LocalDateTime timestamp) {
        this.PK_email = PK_email;
        this.nick = nick;
        this.dest_user = dest_user;
        this.msg = msg;
        this.timestamp = timestamp;
    }

    public BlogEmailBean() {
    }

    public int getPK_email() {
        return PK_email;
    }

    public void setPK_email(int PK_email) {
        this.PK_email = PK_email;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getDest_user() {
        return dest_user;
    }

    public void setDest_user(String dest_user) {
        this.dest_user = dest_user;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof BlogEmailBean)) return false;
        BlogEmailBean that = (BlogEmailBean) o;
        return getPK_email() == that.getPK_email() &&
                Objects.equals(getNick(), that.getNick()) &&
                Objects.equals(getDest_user(), that.getDest_user()) &&
                Objects.equals(getMsg(), that.getMsg()) &&
                Objects.equals(getTimestamp(), that.getTimestamp());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getPK_email(), getNick(), getDest_user(), getMsg(), getTimestamp());
    }

    @Override
    public String toString() {
        return "BlogEmailBean{" +
                "PK_email=" + PK_email +
                ", nick='" + nick + '\'' +
                ", dest_user='" + dest_user + '\'' +
                ", msg='" + msg + '\'' +
                ", timestamp=" + timestamp +
                '}';
    }
}
