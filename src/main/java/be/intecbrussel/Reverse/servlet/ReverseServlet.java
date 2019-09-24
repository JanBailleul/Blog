package be.intecbrussel.Reverse.servlet;


import be.intecbrussel.bean.BlogBean;
import be.intecbrussel.bean.BlogEmailBean;
import be.intecbrussel.bean.BlogLoginBean;
import be.intecbrussel.bean.BlogProfileBean;
import be.intecbrussel.dao.BlogDAO;
import be.intecbrussel.dao.BlogEmailDAO;
import be.intecbrussel.dao.BlogLoginDAO;
import be.intecbrussel.dao.BlogProfileDAO;
import be.intecbrussel.service.HelloService;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Driver;
import java.sql.SQLException;
import java.util.*;
import java.util.stream.Stream;

@WebServlet(value="/HelloMVC")
public class ReverseServlet extends HttpServlet {
    private BlogDAO dao;
    private BlogLoginDAO loginDao;
    private BlogProfileDAO profileDao;
    private BlogEmailDAO emailDao;

    public void init() throws ServletException {
        dao = new BlogDAO();
        loginDao = new BlogLoginDAO();
        profileDao = new BlogProfileDAO();
        emailDao = new BlogEmailDAO();

        try {
            dao.setDriver("com.mysql.jdbc.Driver");
            loginDao.setDriver("com.mysql.jdbc.Driver");
            profileDao.setDriver("com.mysql.jdbc.Driver");
            emailDao.setDriver("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        dao.setPassword("");
        loginDao.setPassword("");
        profileDao.setPassword("");
        emailDao.setPassword("");

        dao.setUrl("jdbc:mysql://localhost:3306/Blog");
        loginDao.setUrl("jdbc:mysql://localhost:3306/Blog");
        profileDao.setUrl("jdbc:mysql://localhost:3306/Blog");
        emailDao.setUrl("jdbc:mysql://localhost:3306/Blog");

        dao.setUser("root");
        loginDao.setUser("root");
        profileDao.setUser("root");
        emailDao.setUser("root");


    }

    private HelloService service = new HelloService();
    BlogBean blogBean = new BlogBean();

    BlogLoginBean blbean = new BlogLoginBean();
    BlogProfileBean bpbean = new BlogProfileBean();
    BlogEmailBean bmbean = new BlogEmailBean();


    public ArrayList<BlogBean> displayBlogItems(String param, String thrd) {

        List<BlogBean> items = null;
        try {
            items = dao.getBlogItems( param, thrd);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        ArrayList<BlogBean> totalArray = new ArrayList<BlogBean>();

        for (BlogBean i : items) {
            BlogBean blogBn = new BlogBean();

            blogBn.setId(i.getId());
            blogBn.setName(i.getName());
            blogBn.setMessage(i.getMessage());
            blogBn.setThreadNr(i.getThreadNr());
            blogBn.setTimestamp(i.getTimestamp());

            totalArray.add(blogBn);

        }
        return totalArray;
    }

    public ArrayList<BlogEmailBean> displayEmails(String param) {

        List<BlogEmailBean> items = null;
        try {
            items = emailDao.getEmails(param);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ArrayList<BlogEmailBean> totalArray = new ArrayList<BlogEmailBean>();

        for (BlogEmailBean i : items) {
            BlogEmailBean blogmBn = new BlogEmailBean();

            blogmBn.setPK_email(i.getPK_email());
            blogmBn.setNick(i.getNick());
            blogmBn.setDest_user(i.getDest_user());
            blogmBn.setMsg(i.getMsg());
            blogmBn.setTimestamp(i.getTimestamp());

            totalArray.add(blogmBn);

        }
        return totalArray;
    }

    public ArrayList<BlogBean> displayBlogThreads() {

        List<BlogBean> items = null;
        try {
            items = dao.getBlogItems();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        ArrayList<BlogBean> totalArray = new ArrayList<BlogBean>();

        for (BlogBean i : items) {
            BlogBean blogBn = new BlogBean();

            blogBn.setId(i.getId());
            blogBn.setName(i.getName());
            blogBn.setMessage(i.getMessage());
            blogBn.setThreadNr(i.getThreadNr());
            blogBn.setTimestamp(i.getTimestamp());

            totalArray.add(blogBn);

        }

        return totalArray;
    }

    public List<BlogProfileBean> displayProfile(String nick) {

        List<BlogProfileBean> profile = null;
        try {
            profile = profileDao.getProfileData(nick);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        List<BlogProfileBean> prof = new ArrayList<BlogProfileBean>();

        for (BlogProfileBean i : profile) {
            BlogProfileBean profBn = new BlogProfileBean();

            profBn.setPK_profile(i.getPK_profile());
            profBn.setLogin_name(i.getLogin_name());
            profBn.setLogin_secondNm(i.getLogin_secondNm());
            profBn.setNickname(i.getNickname());
            profBn.setEmailAddrs(i.getEmailAddrs());

            prof.add(profBn);
        }

        return prof;
    }

    public ArrayList<BlogBean> displaySingleRow(HttpServletRequest request, HttpServletResponse response, int rw) {
        List<BlogBean> itemsRow = null;
        try {
            itemsRow = dao.getBlogItemsById(rw);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ArrayList<BlogBean> totalArray = new ArrayList<BlogBean>();

        for (BlogBean i : itemsRow) {
            BlogBean blogBnRow = new BlogBean();

            blogBnRow.setName(i.getName());
            blogBnRow.setThreadNr(i.getThreadNr());
            totalArray.add(blogBnRow);
        }
        return totalArray;

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws IOException, ServletException {

        if(request.getParameter("btnPostMessage") != null) {
            BlogBean blogInput = new BlogBean();

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));
            request.setAttribute("NameID", request.getParameter("NameID"));

            request.getRequestDispatcher("/PostMessage.jsp").forward(request, response);

        }


        if(request.getParameter("btnPostMessageAfter") != null ) {
            BlogBean blogInput = new BlogBean();

            blogInput.setName(request.getParameter("NameID"));
            blogInput.setMessage(request.getParameter("posted"));
            blogInput.setThreadNr(request.getParameter("Thr_id"));


            try {
                dao.addBlogItem(blogInput.getName(), blogInput.getMessage(), blogInput.getThreadNr());
            } catch (SQLException e) {
                e.printStackTrace();
            }

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));
            request.setAttribute("NameID", request.getParameter("NameID"));

            request.setAttribute("totalArray", displayBlogItems(request.getParameter("nickNM"),
                    request.getParameter("Thr_id")));
            request.getRequestDispatcher("/HelloResult.jsp").forward(request, response);
        }


        if(request.getParameter("btnHomePage") != null ) {

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));
            request.setAttribute("NameID", request.getParameter("NameID"));

            request.setAttribute("totalArray", displayBlogItems(request.getParameter("nickNM"),
                                                                    request.getParameter("Thr_id")));
            request.getRequestDispatcher("/HelloResult.jsp").forward(request, response);

        }
        if(request.getParameter("btnProfileGeneral") != null) {

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));

            request.setAttribute("NameID", request.getParameter("NameID"));

            System.out.println(displayProfile(request.getParameter("nickNM")));

            request.setAttribute("prof", displayProfile(request.getParameter("nickNM")));

            try {
                request.setAttribute("msgCount", dao.countGetBlogItems(request.getParameter("nickNM")));
            } catch (SQLException e) {
                e.printStackTrace();
            }
            request.getRequestDispatcher("/Profile.jsp").forward(request, response);
        }

        if(request.getParameter("btnEmailMeGeneral") != null) {
            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("NameID", request.getParameter("NameID"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));

            request.setAttribute("totalArray", displayBlogThreads());

            request.getRequestDispatcher("/EmailMe.jsp").forward(request, response);

        }

        if(request.getParameter("btnEmailMeGeneralAfter") != null) {
            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("NameID", request.getParameter("NameID"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));

            try {
                dao.addEmailMsg(request.getParameter("nickNM"), request.getParameter("NameID"),
                        request.getParameter("postedMail"));
            } catch (SQLException e) {
                e.printStackTrace();
            }

            request.setAttribute("totalArray", displayBlogItems(request.getParameter("nickNM"),
                    request.getParameter("Thr_id")));
            request.getRequestDispatcher("/HelloResult.jsp").forward(request, response);

        }
        if(request.getParameter("btnReadEmail") != null) {

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("NameID", request.getParameter("NameID"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));

            request.setAttribute("totalArray", displayEmails(request.getParameter("NameID")));
            request.setAttribute("totalArray2", displayEmails(request.getParameter("nickNM")));

            request.getRequestDispatcher("/ReadEmail.jsp").forward(request, response);
        }

        if(request.getParameter("btnOverviewGeneral") != null) {

            request.setAttribute("nickNM", request.getParameter("nickNM"));
            request.setAttribute("NameID", request.getParameter("NameID"));
            request.setAttribute("Thr_id", request.getParameter("Thr_id"));

            request.setAttribute("totalArray", displayBlogThreads());

            request.getRequestDispatcher("/OverviewThr.jsp").forward(request, response);
        }
        if(request.getParameter("btnWebsiteOverview") != null) {}

        request.setAttribute("errorMessage", "Please insert a correct username/password: ");
        request.getRequestDispatcher("HelloForm.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {



/*
        BlogBean blogInput = new BlogBean();
        blogInput.setName(request.getParameter("name"));
        blogInput.setMessage(request.getParameter("posted"));

        if(request.getParameter("posted") != "Input your message here: ...") {

            System.out.println(blogInput.getMessage());

            try {
                dao.addBlogItem(blogInput.getName(), blogInput.getMessage());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
*/

        List<BlogLoginBean> authent = null;

        try {
            authent = loginDao.getUserNameAuthFromDB(request.getParameter("userName"));
        } catch (Exception e) {
            e.printStackTrace();
        }

        ArrayList<BlogLoginBean> loginArray = new ArrayList<BlogLoginBean>();

        for(BlogLoginBean i2 : authent) {
            blbean.setPK_login(i2.getPK_login());
            blbean.setUserNameAuth(i2.getUserNameAuth());
            blbean.setPassAuth(i2.getPassAuth());

            loginArray.add(blbean);
        }

        if((blbean.getPassAuth().equals(request.getParameter("password"))
            && blbean.getUserNameAuth().equals(request.getParameter("userName"))) ) {

            request.setAttribute("totalArray", displayBlogItems("janb", "General"));
            request.setAttribute("errorMessage", "Please insert a correct username/password: ");

            request.setAttribute("nickNM", "janb");
            request.setAttribute("Thr_id", "General");
            request.setAttribute("NameID", blbean.getUserNameAuth());

            request.getRequestDispatcher("HelloResult.jsp").forward(request, response);
        }



        if ( (!blbean.getPassAuth().equals(request.getParameter("password"))
                || !blbean.getUserNameAuth().equals(request.getParameter("userName")))
                || (!blbean.getPassAuth().equals(request.getParameter("password"))
                    && !blbean.getUserNameAuth().equals(request.getParameter("userName"))) ) {

            request.setAttribute("errorMessage", "You haven't given a correct username/password, insert a correct username and password: ");
            request.getRequestDispatcher("HelloForm.jsp").forward(request, response);
        }
    }

    public void destroy() {
        try {
            com.mysql.jdbc.AbandonedConnectionCleanupThread.shutdown();
        } catch (Throwable t) {}
        // This manually deregisters JDBC driver, which prevents Tomcat 7 from complaining about memory leaks
        Enumeration<Driver> drivers = java.sql.DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            java.sql.Driver driver = drivers.nextElement();
            try {
                java.sql.DriverManager.deregisterDriver(driver);
            } catch (Throwable t) {}
        }
        try { Thread.sleep(2000L); } catch (Exception e) {}
    }
}