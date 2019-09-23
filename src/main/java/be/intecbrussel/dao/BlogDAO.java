package be.intecbrussel.dao;

import be.intecbrussel.bean.BlogBean;
import be.intecbrussel.bean.BlogCountBean;

import javax.servlet.ServletException;
import java.sql.*;
import java.util.*;

import static java.sql.DriverManager.deregisterDriver;

public class BlogDAO {

    private String url;
    private String user;
    private String password;

    private static final String DELETE_QUERY = "DELETE FROM msg WHERE PK = ?";

    private static final String INSERT_MSG_QUERY = "insert into msg (Name, Msg, ThreadNr) VALUES (?,?,?)";

    private static final String INSERT_MSG_QUERY_EMAIL = "insert into email (Nick, emailADD, Msg) VALUES (?,?,?)";

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

    public List<BlogBean> getBlogItems(String qryName, String Thread) throws SQLException {
        String qry = "select PK, Name, Msg, ThreadNr, TM from msg WHERE Name = '" + qryName + "' AND ThreadNr = '" + Thread +  "'";

        List<BlogBean> messages = new ArrayList<BlogBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery(qry);
             ) {
             while (rs.next()) {
                 BlogBean bean = new BlogBean(rs.getInt(1),
                                            rs.getString(2),
                                            rs.getString(3),
                                            rs.getString(4),
                                            rs.getTimestamp(5).toLocalDateTime());
                 messages.add(bean);
            }

            return messages;
        }
    }

    public List<BlogBean> getBlogItems() throws SQLException {
        String qry = "select PK, Name, Msg, ThreadNr, TM from msg GROUP BY Name, ThreadNr";

        List<BlogBean> messages = new ArrayList<BlogBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery(qry);
        ) {
            while (rs.next()) {
                BlogBean bean = new BlogBean(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getTimestamp(5).toLocalDateTime());



                messages.add(bean);
            }

            return messages;
        }
    }

    public List<BlogBean> getBlogItemsById(int row) throws SQLException {
        String qry = "select PK, Name, Msg, ThreadNr, TM from msg WHERE PK = " + row + " GROUP BY Name, ThreadNr";

        List<BlogBean> messages = new ArrayList<BlogBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery(qry);
        ) {
            while (rs.next()) {
                BlogBean bean = new BlogBean(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getTimestamp(5).toLocalDateTime());



                messages.add(bean);
            }

            return messages;
        }
    }

    public int countGetBlogItems(String qryName) throws SQLException {
        String qry = "select Name from msg WHERE Name = '" + qryName + "'";
        int countMsg = 0;

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery(qry);
        ) {
            while (rs.next()) {
                BlogCountBean bean = new BlogCountBean(
                        rs.getString(1));

                countMsg++;
            }

            return countMsg;
        }
    }


    public void addBlogItem(String nm, String ms, String thr) throws SQLException {
        try (Connection con = getConnection();
             PreparedStatement stmt = con.prepareStatement(INSERT_MSG_QUERY)) {
             stmt.setString(1, nm);
             stmt.setString(2, ms);
             stmt.setString(3, thr);
             stmt.executeUpdate();
        }
    }

    public void addEmailMsg(String nm, String emailADD, String msg) throws SQLException {
        try (Connection con = getConnection();
             PreparedStatement stmt = con.prepareStatement(INSERT_MSG_QUERY_EMAIL)) {
            stmt.setString(1, nm);
            stmt.setString(2, emailADD);
            stmt.setString(3, msg);
            stmt.executeUpdate();
        }
    }

    public void deleteBlogItem(int pkTable) throws SQLException {
        try(Connection con = getConnection();
        PreparedStatement stmt = con.prepareStatement(DELETE_QUERY)) {
            stmt.setInt(1, pkTable);
            stmt.execute();
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    private void deregisterDriver(java.sql.Connection connection) {
    }
}
