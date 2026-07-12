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
             <div id='mydata'>
             <form action="update3.jsp" />
            <table id="formtable">
              
                <%
                if(rs.next())
                    {
                    %>
                 <tr>
                     <td>Roll Number</td>
                     <td><%= rs.getString(1)%></td>
                     <td><input type='text' value=<%=rs.getString(1)%> name='u1' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Name</td>
                     <td><%= rs.getString(1)%></td>
                     <td><input type='text' value=<%=rs.getString(2)%> name='u2' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Physics Marks</td>
                     <td><%= rs.getString(1)%></td>
                     <td><input type='text' value=<%=rs.getString(3)%> name='u3' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Chemistry Marks</td>
                     <td><%= rs.getString(1)%></td>
                     <td><input type='text' value=<%=rs.getString(4)%> name='u4' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Mathematics Marks</td>>
                     <td><%= rs.getString(1)%></td>
                     <td><input type='text' value=<%=rs.getString(5)%> name='u5' id='A'/></td>
                 </tr>  
                 
                 <tr>
                    <td colspan='3' align='center'><input type='submit' value='Update' class='B'/></td>
                </tr>
              </table>
         </form>
                 </div>
         </center>  
                 <%
                     }
                     con.close();
        }
        catch(Exception e)
        {
        out.println(e);
        }
%>

    </body>
</html>
