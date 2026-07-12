import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class menudemo1 extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        String s1=(String)session.getAttribute("un");
        if(s1!=null)
        {
             out.println("<html>");
     out.println("<head>");
         out.println("<link rel='stylesheet' href='abc.css'/>");
     out.println("</head>");
     out.println("<body>");
         out.println("<div id='mymenu'>");
             out.println("<ul>");
                 out.println("<li><a href='home.html'>Home</a></li>");
                 out.println("<li><a href='insertdemo.html'>Insert</a></li>");
                 out.println("<li><a href='searchdemo.html'>Search</a></li>");
                 out.println("<li><a href='Servershowall'>ShowAll</a></li>");
                 out.println("<li><a href='updatedemo.html'>Update</a></li>");
                 out.println("<li><a href='deletedemo.html'>Delete</a></li>");
                out.println("<li><a href='#'>About</a></li>");
                out.println("<li><a href='#'>Contact</a></li>");
                 out.println("<li><a href='Logout'>Logout</a></li>");
             out.println("</ul>");
         out.println("</div>");
     out.println("</body>");
 out.println("</html>");
            out.println("<h1 style='color:white;text-align:center'>Welcome to the Menupage "+s1+"</h1>");
        }
        else
        {
            response.sendRedirect("login.html");
        }
    }
}