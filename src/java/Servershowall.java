import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Servershowall extends HttpServlet
{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
                      throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();

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
        out.println("<li><a href=\"#\">About</a></li><li><a href=\"#\">Contact</a></li><li><a href='login.html'>Logout</a></li>");
        out.println("</ul></div>");
        out.println("<div id='mydata'>");
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql:///ajava56",
                "root",
                "12345678"
            );

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from insdemo");
            
            out.println("<center>");
            out.println("<table id=showtable>");
            out.println("<tr>");
            out.println("<th>Roll Number</th>");
            out.println("<th>Name</th>");
            out.println("<th>Physics</th>");
            out.println("<th>Chemistry</th>");
            out.println("<th>Maths</th>");
            out.println("</tr>");
            while(rs.next())
            {
           
            
                out.println("<tr>");

                out.println("<td>"+rs.getString(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.println("<td>"+rs.getString(5)+"</td>");

                out.println("</tr>");
            }
            out.println("</table>");
        out.println("</center>");

           
            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
        
        out.println("</body>");
        out.println("</html>");
    }
}