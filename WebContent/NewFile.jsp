<%@ page import="java.sql.*" %>
<%@ page import="demo.Model.DBUtils.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
 <%@ page pageEncoding="UTF-8" %>
<HTML>
    <HEAD>
        <TITLE>Table Employees </TITLE>
    </HEAD>

    <BODY>
        <% 
            Connection connection = new ConnectionPool().getConnection();

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from imf") ; 
        %>

        <TABLE >
            <TR>
               <th>Emp ID</th>
			   <th>First Name</th>
			   <th>Last Name</th>
			   <th>Age</th>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
              
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>