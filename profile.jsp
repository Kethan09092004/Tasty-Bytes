<%@page import="java.sql.*"%>
<%

     String uname=(String)session.getAttribute("user");
     if(uname!=null)
     {
       try
		 {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kethan","kethan");
         PreparedStatement pst=con.prepareStatement("select * from food where uname=?");
         pst.setString(1,uname);
         ResultSet rs=pst.executeQuery();
         out.print("<html>");
          out.print("<body>");  
            out.print("<form action='logout.jsp'><div class='logout'><button type='submit'>Logout</button></div></form>");
         out.print("<h1 style='font-family: fantasy;font-weight: 100;text-align: center;'>My Profile</h1>");
         out.print("<container class='pro'>");
         out.print("<table border='5'>");
         
          while(rs.next())
         {
            out.print("<tr>");
            out.print("<th >Name </th>");
            out.print("<td>"+rs.getString(1)+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>User Name </th>");
            out.print("<td>"+rs.getString(2)+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>Email </th>");
            out.print("<td>"+rs.getString(3)+"</td>");
            out.print("</tr>");                        
            out.print("<tr>");
            out.print("<th>Mobile number</th>");
            out.print("<td>"+rs.getLong(5)+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>City </th>");
            out.print("<td>"+rs.getString(6)+"</td>");
            out.print("</tr>");           
            

         }
         out.print("</table>");
         %>
             <style>
               table{
                  height:max-content;
                  width:30%;
                  margin-top: 5%;
                  margin-left:35%;
                  border-spacing: 40px;
                  color: rgb(14, 220, 235);
                  background-color:rgba(128, 128, 128, 0.508);
                  backdrop-filter: blur(15px);
               }
               tr{
                  padding:20px;
               }
               h1{
                  
                  margin-top:10%;
                  color:coral;
               }
               .pro{
                  box-sizing: border-box;
                  color:aliceblue;
               }
               body{
                  background-image: url("https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg");
                  background-size:cover ;
               }
               .logout{
                 width:30px;
                 border-radius: 20px;
                  margin-left:90%;
               }
               
             </style>

         <%
         out.print("</container>");
         out.print("</body>");
        out.print("</html");
       }
       catch(Exception e)
       {
           out.print(e);
       }
      }
   else
   {
      out.print("<center/><h1>Please Login First</h1>");
      %>
      <form action="home.html">
         <button type="submit" class="home">Home</button>
     </form>
     <form action="login.html">
         <button type="submit" class="login">Login</button>
     </form>
          <style>
               body{
                  background-image: url("https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg");
                  background-size:cover ;
               }
               .home{
        background-color: rgb(205, 205, 229);
        height: 30px;
        width:70px;
        border-radius: 30px;
        
    }

    .login{
        background-color: rgb(205, 205, 229);
        height: 30px;
        width:70px;
        border-radius: 30px;
    } 
    .login :hover{
        transform: scale3d(15px);
    }
          </style>

      <%
   }
   
 %>    