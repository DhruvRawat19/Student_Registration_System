import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class UpdateServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
                      throws ServletException, IOException
    {
        String s1=request.getParameter("u1");
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

            ResultSet rs = st.executeQuery("select * from insdemo where Roll_Number='"+s1+"'");
            
            if(rs.next())
            {
                out.println("<div id='mydata'>");
out.println("<form action='FinalUpdateServlet'>");

out.println("<center>");

out.println("<table id='formtable' cellpadding='12'>");

out.println("<tr>");
out.println("<td>Roll Number</td>");
out.println("<td><input type='text' value='"+rs.getString(1)+"' name='u1' id='A'/></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>Full Name</td>");
out.println("<td><input type='text' value='"+rs.getString(2)+"' name='u2' id='A'/></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>Physics Marks</td>");
out.println("<td><input type='text' value='"+rs.getString(3)+"' name='u3' id='A'/></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>Chemistry Marks</td>");
out.println("<td><input type='text' value='"+rs.getString(4)+"' name='u4' id='A'/></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td>Mathematics Marks</td>");
out.println("<td><input type='text' value='"+rs.getString(5)+"' name='u5' id='A'/></td>");
out.println("</tr>");

out.println("<tr>");
out.println("<td colspan='2' align='center'>");
out.println("<input type='submit' value='Update' class='B'/>");
out.println("</td>");
out.println("</tr>");
out.println("</table>");
out.println("</center>");
out.println("</form>");
out.println("</div>");
            }
            else
            {
                 out.println("<center>");
                 out.println("<h2 style='color:white;'>Invalid Roll Number</h2>");
                 out.println("</center>");
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