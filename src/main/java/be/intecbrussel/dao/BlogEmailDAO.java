package be.intecbrussel.dao;

import be.intecbrussel.bean.BlogEmailBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogEmailDAO {
    private String url;
    private String user;
    private String password;

    public void setUrl(String url) {
        this.url = url;
    }

    public void setDriver(String driver) throws ClassNotFoundException {
        Class.forName(driver);
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<BlogEmailBean> getEmails(String destName) throws SQLException {
        String qry = "select PK_email, nick, dest_user, msg, TM FROM email WHERE dest_user = '" + destName + "'";

        List<BlogEmailBean> messages = new ArrayList<BlogEmailBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery(qry);
        ) {
            while (rs.next()) {
                BlogEmailBean mbean = new BlogEmailBean(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getTimestamp(5).toLocalDateTime());
                messages.add(mbean);
            }

            return messages;
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    private void deregisterDriver(java.sql.Connection connection) {
    }
}
