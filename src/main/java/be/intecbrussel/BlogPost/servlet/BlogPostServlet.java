package be.intecbrussel.BlogPost.servlet;

import be.intecbrussel.bean.BlogBean;
import be.intecbrussel.bean.BlogLoginBean;
import be.intecbrussel.dao.BlogDAO;
import be.intecbrussel.dao.BlogLoginDAO;
import be.intecbrussel.service.HelloService;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.Driver;
import java.util.*;

import be.intecbrussel.bean.BlogBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class BlogPostServlet extends HttpServlet {
    BlogDAO dao = new BlogDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        BlogBean blogInput = new BlogBean();
        blogInput.setName(request.getParameter("name"));
        blogInput.setMessage(request.getParameter("posted"));
        blogInput.setThreadNr(request.getParameter("Thread"));

        if(request.getParameter("posted") != "Input your message here: ...") {

            System.out.println(blogInput.getMessage());

            try {
                dao.addBlogItem(blogInput.getName(), blogInput.getMessage(), blogInput.getThreadNr());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        System.out.println(request.getParameter("posted"));

    }
}
