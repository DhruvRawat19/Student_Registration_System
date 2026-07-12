import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class InsertServlet extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        String s1=request.getParameter("u1");
        String s2=request.getParameter("u2");
        String s3=request.getParameter("u3");
        String s4=request.getParameter("u4");
        String s5=request.getParameter("u5");
        out.println("<html>");
        out.println("<body>");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava56","root","12345678");
        Statement st=con.createStatement();
        int x=st.executeUpdate("insert into insdemo values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
        con.close();
        }
        catch(Exception e)
        {
        out.println(e);
        }
        response.sendRedirect("Servershowall");
        out.println("</body>");
        out.println("</html>");
    }}