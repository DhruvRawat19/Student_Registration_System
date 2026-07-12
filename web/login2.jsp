<%@page import="java.sql.*"%>
<% 
String s1=request.getParameter("un");
String s2=request.getParameter("up");
try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava56","root","12345678");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from regis where uname='"+s1+"' and upass='"+s2+"'");
        if(rs.next())
        {
            response.sendRedirect("menudemo2.jsp");
        }
        else
        {
            response.sendRedirect("login.jsp?s3=Invalid Username and Password");
        }
        con.close();
        }
        catch(Exception e)
        {
        out.println(e);
        }
%>