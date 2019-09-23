package be.intecbrussel.bean;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class BlogBean implements Serializable {

     private int id;
     private LocalDateTime timestamp;
     private String name;
     private String message;
     private String ThreadNr;

    public BlogBean(int id, String name, String message, String ThreadNr, LocalDateTime timestamp) {
       this.id = id;
       this.timestamp = timestamp;
       this.name = name;
       this.message = message;
       this.ThreadNr = ThreadNr;
    }

    public BlogBean() {
    }

    public int getId() {
         return id;
     }

    public BlogBean setId(int id) {
        this.id = id;
        return this;
    }

    public LocalDateTime getTimestamp() {
         return timestamp;
      }

    public BlogBean setTimestamp(LocalDateTime timestamp) {
       this.timestamp = timestamp;
       return this;
    }

    public String getName(/*String name*/) {
         return /*this.*/name;
      }

    public /*BlogBean*/ void setName(String name) {
       this.name = name;
         //return this;
    }

    public String getMessage() {
         return message;
      }

    public BlogBean setMessage(String message) {
       this.message = message;
       return this;
    }

    public String getThreadNr() {
        return ThreadNr;
    }

    public BlogBean setThreadNr(String ThreadNr) {
        this.ThreadNr = ThreadNr;
        return this;
    }

    @Override
    public boolean equals(Object o) {
       if (this == o) return true;
       if (o == null || getClass() != o.getClass()) return false;
       BlogBean that = (BlogBean) o;
       return id == that.id &&
               Objects.equals(timestamp, that.timestamp) &&
               Objects.equals(name, that.name) &&
               Objects.equals(ThreadNr, that.ThreadNr) &&
               Objects.equals(message, that.message);
    }

    @Override
    public int hashCode() {
         return Objects.hash(id, name, message, ThreadNr, timestamp);
      }

    @Override
    public String toString() {
        return "BlogBean{" +
                "id=" + id +
                ", timestamp=" + timestamp +
                ", name='" + name + '\'' +
                ", message='" + message + '\'' +
                ", ThreadNr='" + ThreadNr + '\'' +
                '}';
    }

}
