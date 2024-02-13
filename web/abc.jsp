<%-- 
    Document   : abc
    Created on : Feb 1, 2024, 8:06:05 PM
    Author     : krish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       <%
             String name = request.getParameter("n");
             String size = request.getParameter("s");
             String top = request.getParameter("top");
             String add = request.getParameter("add");
             
             /*out.println(name);
             out.println(size);
             out.println(top);
             out.println(add);*/
             
             int baseprice, topprice, total;
             
             if(size.equals("small"))
             {
                  baseprice=200;
             }
             else if(size.equals("medium"))
             {
                  baseprice=250;
             }
             else
             {
                   baseprice=300;
             }
             
             if(top.equals("cheese"))
             {
                   topprice=70;
             }
             else if(top.equals("capsicum"))
             {
                   topprice=60;
             }
             else 
             {
                   topprice=50;
             }
             
             total = baseprice+topprice;
            // out.println(total);
        %>
        <!--<div class="receipt">-->
        <h2>Order Receipt</h2>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Size:</strong> <%= size %></p>
        <p><strong>Topping:</strong> <%= top %></p>
        <p><strong>Address:</strong> <%= add %></p>
        
        <hr>
        
        <h3>Order Details</h3>
        <p><strong>Base Price:</strong> $<%= baseprice %></p>
        <p><strong>Topping Price:</strong> $<%= topprice %></p>
        
        <hr>
        
        <h3>Total Price</h3>
        <p><strong>Total:</strong> $<%= total %></p>
    </div>
        
    </body>
</html>
