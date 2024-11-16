<%@page import="java.sql.*"%>
<%
      String uname=request.getParameter("username");
      String pwd=request.getParameter("password");
      try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kethan","kethan");
            Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from food");
            int count=0;
			while(rs.next())
			{
				if(uname.equals(rs.getString(2))&&pwd.equals(rs.getString(4)))
				{
					count=count+1;
					break;
				}
			}
			if(count==0)
			{
				
				%>
			
					<script>
						alert('Invalid username or password');
					setTimeout(function() {
						// Redirect to the specified page after the delay
						
						window.location.href = 'login.html';
					}, 30); </script>
					
	
                     
				<%

			}
			else
			{
				out.print("<h1 style='text-align:center;color:blue;'>Logged In Succesfully as "+uname+"</h1>");
				session.setAttribute("user",uname);
        %>
        <jsp:forward page="home1.html"></jsp:forward>
        <%			
			}
			con.close();
		}
		catch (Exception e)
		{
			out.print(e);
		}


%>

