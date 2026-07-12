import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class DeleteServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
                      throws ServletException, IOException
    {
        String s1=request.getParameter("u1");
       
        PrintWriter out=response.getWriter();

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con=DriverManager.getConnection(
                "jdbc:mysql:///ajava56",
                "root",
                "12345678"
            );

            Statement st=con.createStatement();

            st.executeUpdate("delete from insdemo where roll_number='"+s1+"'");

            response.sendRedirect("Servershowall");

            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
}