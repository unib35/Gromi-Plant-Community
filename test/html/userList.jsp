<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TestDB?serverTimezone=UTC","tester","1234");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT idDb, passDb FROM classTable");
    String str = "";
    while(rs.next()) {
        str += rs.getString("idDb") + "," + rs.getString("passDb") + "<br>";
    }
    out.print(str);
    rs.close();
    stmt.close();
    conn.close();
%>