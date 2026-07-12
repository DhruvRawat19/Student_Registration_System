<%@page import="java.sql.*" %>
<%
    String s1=request.getParameter("u1");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con=DriverManager.getConnection(
                "jdbc:mysql:///ajava56",
                "root",
                "12345678"
            );

            Statement st=con.createStatement();

            st.executeUpdate("delete from insmarks where enroll='"+s1+"'");

            response.sendRedirect("showall.jsp");

            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>