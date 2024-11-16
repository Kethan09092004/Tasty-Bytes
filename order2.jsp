<!DOCTYPE html>
<html>
<head>
  <title>Booking Form</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<style>
  body {
     
    background-size: cover;
  }
.container {
  
  width: 700px;
  margin: 0 auto;
  background-color:rgba(128, 128, 128, 0.508);
   backdrop-filter: blur(15px); 
  border-radius: 30px;
}

.btn-primary{
  color: black;
  background-color: antiquewhite;
}
.btn-primary:hover{
  
  background-color: rgb(7, 164, 226);
}
.form-group {
  margin-bottom: 6px;
  font-size: large;

}
</style>
<body background="img/img18.jpg">

  <%@page import="java.util.*"%>

  <%
    String uname=(String)session.getAttribute("user");
    String item=request.getParameter("name");
    String price=request.getParameter("price");
    session.setAttribute("item",item);
    session.setAttribute("itemprice",price);
    if(uname==null)
    {
      %>
         <jsp:forward page="profile.jsp"></jsp:forward>

         <%
    } 
  %>
  <center><h1 style="text-align: center;font-family: fantasy;">Order Form</h1></center>
  <div class="container ">
    <form action="payment.jsp" method="POST">
     
      <div class="form-group">
        <label for="name1"><b><h3 style="color:rgb(14, 206, 224);">Item Name : <%=item%></h3></b></label> 
      </div>
      <div class="form-group">
        <label for="name1"><b><h3 style="color:rgb(12, 189, 234);">Item price : <%=price%></h3></b></label> 
      </div>
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="text" class="form-control" name="email" placeholder="email" required>
      </div>
      <div class="form-group"> 
        <label for="Phone">Phone</label>
        <input type="number" class="form-control" max="9999999999" min="600000000" id="Phone" name="phn" placeholder="Enter your phone number" required>
      </div>
      <div class="form-group">
        <label for="drop">Payment mode</label><br>
        <select id="drop" name="Payment" class="form-control" >
            <option value="payed with upi">phone pay </option>
            <option value="credit card">google pay</option>
            <option value="credit card">paytm</option>
            <option value="credit card">credit / debit card</option>
            <option value="other apps">other apps</option>
          </select>
      </div>
      <div class="form-group">
        <label for="email">Enter Quanitity </label>
        <input type="number" name="quant">
      </div>
      <div class="form-group">
        <label for="message">Address</label>
        <textarea class="form-control" id="message" name="address" rows="3" placeholder="Enter your address" required></textarea>
      </div>
      <button  type="submit" class="btn-primary" name="Order" >Order Now</button>
    </form> 
  </div>
  </body>
</html>