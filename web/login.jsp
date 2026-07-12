<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
        <%@include file="menudemo1.jsp" %>
        <div id="mydata">
            <center>
                <form action="login2.jsp">
                    <%
                        String s4=request.getParameter("s3");
                        if(s4!=null)
                        {
                           %>
                           <%=s4%>
                           <%
                        }
                    %>
                    <table id=formtable cellpadding="12px">
                        <tr>
                            <td>Enter Name</td>
                            <td><input type="text" placeholder="Enter Name" name="un" id="A"/></td>
                        </tr>
                        <tr>
                            <td>Enter Password</td>
                            <td><input type="password" placeholder="Enter Password" name="up" id="A"/></td>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" value="LogIn" class="B" />
                        </tr>
                    </table>
                </form>
            </center>
        </div>
    </body>
</html>