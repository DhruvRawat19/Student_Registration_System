import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SearchServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
                      throws ServletException, IOException
    {
        response.setContentType("text/html");

        String s1 = request.getParameter("u1");

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
        out.println("<li><a href='#'>About</a></li>");
        out.println("<li><a href='#'>Contact</a></li>");
        out.println("<li><a href='login.html'>Logout</a></li>");
        out.println("</ul>");
        out.println("</div>");

        out.println("<div id='mydata'>");

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql:///ajava56",
                "root",
                "12345678"
            );

            PreparedStatement ps = con.prepareStatement("select * from insdemo where Roll_Number='"+s1+"'");

            ps.setString(1, s1);

            ResultSet rs = ps.executeQuery();

            out.println("<center>");

            if(rs.next())
            {
                out.println("<table id='showtable'>");

                out.println("<tr>");
                out.println("<th>Roll Number</th>");
                out.println("<td>"+rs.getString(1)+"</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>Name</th>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>Physics</th>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>Chemistry</th>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.println("</tr>");

                out.println("<tr>");
                out.println("<th>Maths</th>");
                out.println("<td>"+rs.getString(5)+"</td>");
                out.println("</tr>");

                out.println("</table>");
            }
            else
            {
                out.println("<h2 style='color:white;'>Invalid Roll Number</h2>");
            }

            out.println("</center>");

            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }

        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}