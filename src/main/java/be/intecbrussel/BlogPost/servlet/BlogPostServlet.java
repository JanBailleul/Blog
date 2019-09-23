package be.intecbrussel.Reverse.servlet;


import be.intecbrussel.bean.BlogBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class BlogPostServlet {
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
        System.out.println(request.getParameter("posted"));
    }
}
