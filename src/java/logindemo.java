import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class logindemo extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        String s1=request.getParameter("un");
        String s2=request.getParameter("up");
         out.println("<html>");
        out.println("<body>");
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava56","root","12345678");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from regis where uname='"+s1+"' AND  upass='"+s2+"'");
        if(rs.next())
        {
            HttpSession session=request.getSession();
            session.setAttribute("un",s1);
            response.sendRedirect("menudemo1");
        }
        else
        {
            out.println("<h1 style='color:white'>Invalid Username and Password</h1>");
        }
        }
        catch(Exception e)
        {
          out.println(e);  
        }
        out.println("</body>");
        out.println("</html>");
        }
}
       