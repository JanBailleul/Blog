package be.intecbrussel;

import be.intecbrussel.Reverse.servlet.ReverseServlet;
import be.intecbrussel.bean.BlogBean;
import be.intecbrussel.bean.BlogLoginBean;
import be.intecbrussel.dao.BlogDAO;
import be.intecbrussel.dao.BlogLoginDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class BlogPostServlet extends HttpServlet {
    BlogDAO dao = new BlogDAO();

    public void init() throws ServletException {
        dao = new BlogDAO();

        try {
            dao.setDriver("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        dao.setPassword("");
        dao.setUrl("jdbc:mysql://localhost:3306/Blog");
        dao.setUser("root");
    }

    public BlogLoginBean blbean = new BlogLoginBean();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogBean blogInput = new BlogBean();
        blogInput.setName(request.getParameter("nickn"));
        blogInput.setMessage(request.getParameter("posted"));
        blogInput.setThreadNr(request.getParameter("topic"));

        if(request.getParameter("posted") != "Input your message here: ...") {

            System.out.println(blogInput.getMessage());

            try {
                dao.addBlogItem(blogInput.getName(), blogInput.getMessage(), blogInput.getThreadNr());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("HelloMVC");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getParameter("btnDelete") != null) {
            BlogBean blogDelMsg = new BlogBean();
            blogDelMsg.setId(Integer.parseInt(request.getParameter("btnDelete")));

            try {
                dao.deleteBlogItem(blogDelMsg.getId());
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("HelloMVC");
        }

    }


}
