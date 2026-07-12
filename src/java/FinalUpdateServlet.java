import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
 
public class FinalUpdateServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
                      throws ServletException, IOException
    {
        String s1=request.getParameter("u1");
        String s2=request.getParameter("u2");
        String s3=request.getParameter("u3");
        String s4=request.getParameter("u4");
        String s5=request.getParameter("u5");

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

            st.executeUpdate(
            "update insdemo set "+
            "Full_Name='"+s2+"',"+
            "Physics_Marks='"+s3+"',"+
            "Chemistry_Marks='"+s4+"',"+
            "Mathematics_Marks='"+s5+"' "+
            "where Roll_Number='"+s1+"'"
            );

            response.sendRedirect("Servershowall");

            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
}