package be.intecbrussel.dao;

import be.intecbrussel.bean.BlogBean;
import be.intecbrussel.bean.BlogProfileBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogProfileDAO {

    private String url;
    private String user;
    private String password;

    public List<BlogProfileBean> getProfileData(String nicknm) throws SQLException {
        String SELECT_QUERY = "SELECT PK_profile, login_name, login_secondNm, nickname, emailAddrs FROM profile WHERE nickname = '"+ nicknm + "'";

        List<BlogProfileBean> profile = new ArrayList<BlogProfileBean>();

        try (
                Connection con = getConnection();
                PreparedStatement ps = con.prepareStatement(SELECT_QUERY);
                ResultSet rs = ps.executeQuery(SELECT_QUERY);
        ) {
            while (rs.next()) {
                BlogProfileBean pbean = new BlogProfileBean(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));

                profile.add(pbean);
            }

            return profile;
        }
    }

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




    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }

    private void deregisterDriver(java.sql.Connection connection) {
    }

}
