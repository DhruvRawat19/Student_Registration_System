<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>
        <%@include file="menudemo2.jsp" %>
        <div id="mydata">
            <center>
                <form action="insert2.jsp">
                    <table id=formtable cellpadding="12px">
                        <tr>
                            <td>Roll Number</td>
                            <td><input type="text" placeholder="Enter Roll Number" name="u1" id="A"/></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" placeholder="Enter Name" name="u2" id="A"/></td>
                        </tr>
                        <tr>
                            <td>Physics</td>
                            <td><input type="text" placeholder="Enter Physcis Marks" name="u3" id="A"/></td>
                        </tr>
                         <tr>
                            <td>Chemistry</td>
                            <td><input type="text" placeholder="Enter Chemistry Marks" name="u4" id="A"/></td>
                        </tr>
                         <tr>
                            <td>Mathematics</td>
                            <td><input type="text" placeholder="Enter Mathematics Marks" name="u5" id="A"/></td>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" value="Insert" class="B" />
                        </tr>
                    </table>
                </form>
            </center>
        </div>
    </body>
</html>