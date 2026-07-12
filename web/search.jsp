<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
        <div id="mydata">
            <center>
                <form action="search.jsp">
                    <table id="formtable" cellpadding="12px">
                        <tr>
                            <td>Enter Roll Number</td>
                            <td><input type="text" placeholder="Enter Roll Number" name="u1" id="A"/>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" value="Search" class="B" name="b1"/></th>
                        </tr>
                    </table>
                </form>
                
<% 
   String s11=request.getParameter("b1");
   if(s11!=null)
   {
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
<td colspan="5">
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
}
%>
            </center>
        </div>
    </body>
</html>