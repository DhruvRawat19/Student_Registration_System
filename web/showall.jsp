<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
        <div id="mydata">
            <%@page import="java.sql.*"%>
            <%
           try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava56","root","12345678");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from insmarks");%>
        <center>
            <table id="showtable">
                <tr>
                    <td>Roll Number</td>
                    <td>Name</td>
                    <td>Physics Marks</td>
                    <td>Chemistry Marks</td>
                    <td>Mathematics Marks</td>
                </tr>
                <%  
                    boolean found=false;
                    while(rs.next())
                    {
                       found=true; 
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
                     if(!found)

{%>
<tr>
<td colspan="5" align="center">
No Record Found
</td>
</tr><%
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
        </div>
    </body>
</html>