

<%
     session.removeAttribute("user");
     out.print("<center/><h1 style='color: rgb(239, 121, 168);'>Logged Out Succesfully</h1>");
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
</style>