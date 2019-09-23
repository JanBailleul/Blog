import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Objects;

public class BlogBean {

   private int id;
   private LocalDateTime timestamp;
   private String name;
      private String message;

      public BlogBean(LocalDateTime timestamp, String name, String message) {

         this.timestamp = timestamp;
         this.name = name;
         this.message = message;
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

      public String getName() {
         return name;
      }

      public BlogBean setName(String name) {
         this.name = name;
         return this;
      }

      public String getMessage() {
         return message;
      }

      public BlogBean setMessage(String message) {
         this.message = message;
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
                 Objects.equals(message, that.message);
      }

      @Override
      public int hashCode() {
         return Objects.hash(id, timestamp, name, message);
      }

      @Override
      public String toString() {
         return "BlogBean{" +
                 "id=" + id +
                 ", timestamp=" + timestamp +
                 ", name='" + name + '\'' +
                 ", message='" + message + '\'' +
                 '}';
      }
   }

}