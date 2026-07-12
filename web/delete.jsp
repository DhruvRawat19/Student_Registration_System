<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
        <div id="mydata">
            <center>
                <form action="delete.jsp">
                    <table id=formtable cellpadding="12px">
                        <tr>
                            <td>Enter Roll Number</td>
                            <td><input type="text" placeholder="Enter Roll Number" name="u1" id="A"/>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" value="Delete" class="B" name="d1"/></th>
                        </tr>
                    </table>
                </form>
            </center>
        </div>
    </body>
</html>
<%@page import="java.sql.*" %>
<% 
    String s11=request.getParameter("d1");
    if(s11!=null)
    {
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

            int x= st.executeUpdate("delete from insmarks where enroll='"+s1+"'");
            
             if(x==0)
            { %>
                <h3 style='color:black; text-align:center;'>Invalid Roll Number</h3><%
            }
            else
             {
                response.sendRedirect("showall.jsp");
             }
            con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
%>