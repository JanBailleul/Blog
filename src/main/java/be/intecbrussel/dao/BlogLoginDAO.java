package be.intecbrussel.dao;

import be.intecbrussel.bean.BlogLoginBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogLoginDAO {
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

    public List<BlogLoginBean> getUserNameAuthFromDB(String userNameAuth2) throws Exception {
        @SuppressWarnings("SqlResolve") String SELECT_QUERY_AUTH = "SELECT PK_login, userName, pass FROM login WHERE userName = '" + userNameAuth2 + "'";

        List<BlogLoginBean> userNameVerification = new ArrayList<BlogLoginBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(SELECT_QUERY_AUTH);
                ResultSet rs = ps.executeQuery();
        ) {
            while(rs.next()) {
                BlogLoginBean loginBean = new BlogLoginBean(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
                userNameVerification.add(loginBean);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(userNameVerification.toString());

        return userNameVerification;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }



}
