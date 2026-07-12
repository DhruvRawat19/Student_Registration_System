 <%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
        <div id="mydata">
            <center>
                <form action="update.jsp">
                    <table id="formtable" cellpadding="12px">
                        <tr>
                            <td>Enter Roll Number</td>
                            <td><input type="text" placeholder="Enter Roll Number" name="u1" id="A"/></td>
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
             
                <%
                if(rs.next())
                    {
                    %>
                 <center>
             <div id='mydata'>
             <form action="update3.jsp">
            <table id="formtable">    
                    <tr>
                     <td>Roll Number</td>
                     <td><input type='text' value=<%=rs.getString(1)%> name='u1' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Name</td>
                     
                     <td><input type='text' value=<%=rs.getString(2)%> name='u2' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Physics Marks</td>
                     
                     <td><input type='text' value=<%=rs.getString(3)%> name='u3' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Chemistry Marks</td>
                     
                     <td><input type='text' value=<%=rs.getString(4)%> name='u4' id='A'/></td>
                 </tr>   
                 
                 <tr>
                     <td>Mathematics Marks</td>
                   
                     <td><input type='text' value=<%=rs.getString(5)%> name='u5' id='A'/></td>
                 </tr>  
                 
                 <tr>
                    <td colspan='3' align='center'><input type='submit' value='Update' class='B' name="b2"/></td>
                </tr>
              </table>
         </form>
                 </div>
         </center>  
                 <%
                     }
                     else
{
    %>
      <h3 style="color:black;">Invalid Roll Number</h3><%
}
                     con.close();
        }
        catch(Exception e)
        {
        out.println(e);
        }
}

String s22=request.getParameter("b2");
if(s22!=null)
{
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
            if(x!=0)
            {
                response.sendRedirect("showall.jsp");
            }
            else
            {
                out.println("data not updated");
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