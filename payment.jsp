<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%

String name = request.getParameter("name");
String email = request.getParameter("email");
long phn = Long.parseLong(request.getParameter("phn"));


String payment = request.getParameter("payment");
int quant = Integer.parseInt(request.getParameter("quant"));

String addr = request.getParameter("address");

    try
		{
			
         out.print("<html>");
          out.print("<body>");  
            
         out.print("<h1 style='font-family: fantasy;font-weight: 100;text-align: center;'>Payment </h1>");
         out.print("<h4 style='font-family: fantasy;font-weight: 100;text-align: center;'>Click the below payment button to complete the order </h4>");
         out.print("<container class='pro'>");
         out.print("<table border='5'>");
 
            out.print("<tr>");
            out.print("<th >Name </th>");
            out.print("<td>"+name+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>Email </th>");
            out.print("<td>"+email+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>Phone number</th>");
            out.print("<td>"+phn+"</td>");
            out.print("</tr>");                        
            out.print("<tr>");
            out.print("<th>Method of Payment</th>");
            out.print("<td>"+payment+"</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<th>quant</th>");
            out.print("<td>"+quant+"</td>");
            out.print("</tr>");           
            out.print("<th>Address</th>");
            out.print("<td>"+addr+"</td>");
            out.print("</tr>"); 
            out.print("<tr><th><button >Pay</button></th></tr>");        

         
         out.print("</table>");
         %>
             <style>
               table{
                  height:max-content;
                  width:30%;
                  margin-top: 2%;
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
                  
                  margin-top:1%;
                  color:rgb(3, 27, 26);
               }
               h4{
                margin-top:5%;
                  color:rgb(14, 21, 213);               
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

    
		catch (Exception e)
		{
			out.print(e);
		}   


%>

