<%@page import="java.sql.*" %>
<%
        String s1=request.getParameter("u1");
        String s2=request.getParameter("u2");
        String s3=request.getParameter("u3");
        String s4=request.getParameter("u4");
        String s5=request.getParameter("u5");

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                "jdbc:mysql:///ajava56",
                "root",
                "12345678"
            );
            Statement st=con.createStatement();
            int x=st.executeUpdate("update insmarks set name='"+s2+"',phy='"+s3+"',chem='"+s4+"',math='"+s5+"' where enroll='"+s1+"' ");
            response.sendRedirect("showall.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>