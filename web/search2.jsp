<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
   <%@page import="java.sql.*"%>
<% 
String s1=request.getParameter("u1");
try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava56","root","12345678");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from insmarks where enroll='"+s1+"'");
%>
         <center>
            <table id="showtable" cellpading="12px">
                <tr>
                    <td>Roll Number</td>
                    <td>Name</td>
                    <td>Physics Marks</td>
                    <td>Chemistry Marks</td>
                    <td>Mathematics Marks</td>
                </tr>
                <%
                while(rs.next())
                    {
                    %>
                 <tr>
                     <td><%= rs.getString(1)%></td>
                     <td><%= rs.getString(2)%></td>
                     <td><%= rs.getString(3)%></td>
                     <td><%= rs.getString(4)%></td>
                     <td><%= rs.getString(5)%></td>
                 </tr>
                 <%
                     }
                     con.close();
        }
        catch(Exception e)
        {
        out.println(e);
        }
%>
            </table>
         </center>  
    </body>
</html>
