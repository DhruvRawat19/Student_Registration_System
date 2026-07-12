<html>
    <head>
        <link rel="stylesheet" href="abc.css"/>
        <script type="text/javascript" src="xyz.jsp"></script>
    </head>
    <body>
        <%@include file="menudemo1.jsp" %>
        <div id="mydata">
            <center>
                <form action="regis2.jsp" onsubmit="return demo()">
                    <table id=formtable cellpadding="12px">
                        <tr>
                            <td>Enter Name</td>
                            <td><input type="text" placeholder="Enter Name" name="u1" id="A" /></td>
                        </tr>
                        <tr>
                            <td>Enter Password</td>
                            <td><input type="password" placeholder="Enter Password" name="u2" id="A" /></td>
                        </tr>
                        <tr>
                            <td>Enter Contact Number</td>
                            <td><input type="text" placeholder="Enter Contact Number" name="u3" id="A"/></td>
                        </tr>

                        <tr>
                            <th colspan="2"><input type="submit" value="Register" class="B" />
                        </tr>                       
                    </table>
                    <h1 id="s1"></h1>
                </form>
            </center>
        </div>
    </body>
</html>