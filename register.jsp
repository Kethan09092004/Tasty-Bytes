<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String pwd=request.getParameter("password");
long phno=Long.parseLong(request.getParameter("phno"));
String city=request.getParameter("city");
try
{
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kethan","kethan");
    String qry="insert into food values(?,?,?,?,?,?)";;
    PreparedStatement pst=con.prepareStatement(qry);
    pst.setString(1,name);
    pst.setString(2,uname);
    pst.setString(3,email);
    pst.setString(4,pwd);
    pst.setLong(5,phno);
    pst.setString(6,city);
    pst.executeUpdate();
    out.print("<body bgcolor='aliceblue'>");
    out.print("<center>");
    out.print("Registered successfully ");
    out.print("<br>");
    out.print("<style> a { display:inline-block; background-color:gray; text-align:center;color:black; text-decoration:none; padding:8px; }</style>");
    out.print("<a href='login.html'>Click here to Login</a>");
    out.print("</center>");
    out.print("</body>");
    con.close();

}
catch (Exception e)
{
    out.print(e);
}
%>
