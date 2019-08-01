package ex0303;

import java.io.*;

import javax.script.ScriptContext;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import static java.sql.DriverManager.println;

@WebServlet(name = "/Reverse")
public class ReverseServlet extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException {

      System.out.println("1111");

      String param = request.getParameter("text");
      StringBuilder text = new StringBuilder(param);
      text.reverse();
      response.setContentType("text/html");
      response.setCharacterEncoding("UTF-8");
      try (PrintWriter out = response.getWriter()) {
         out.println("<!DOCTYPE html>");
         out.println("<html><head><title>Reverse Servlet</title></head>");
         out.println("<body>");
         out.println(text);
         out.println("</body></html>");
      }
   }



}