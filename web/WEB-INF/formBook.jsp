<%-- 
    Document   : newjsp
    Created on : Nov 23, 2017, 10:32:40 AM
    Author     : qmatejka
--%>

<%@page import="model.Book"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Book book = (request.getAttribute("book")!=null) ?(Book) request.getAttribute("book") : (Book) new Book("", "", "",0,0); 
    User user = (session.getAttribute("user")!=null) ?(User) session.getAttribute("user") : null;
%>    
<form name="bookForm" action="home" method="POST">
    Name: <input type="text" name="name" size="30" value="<%=book.getName()%>" />
    Author: <input type="text" name="author" size="30" value="<%=book.getAuthor()%>"  />
    ISBN: <input type="text" name="isbn" size="30" value="<%=book.getIdISBN()%>" <% if(!book.getIdISBN().equals("")){%>readonly="readonly" style="background:gainsboro"<%}%>/>
    Stock total: <input type="number" name="stockTotal" size="30" value="<%=book.getStockTotal()%>" />
    Stock:  <input type="number" name="stock" size="30" value="<%=book.getStockAvailable()%>" />
    <% if(user != null && user.isAdmin()){ %>
        <button type="submit" name="action" value="add">Add</button>
        <button type="submit" name="action" value="update">Update</button>
        <button type="submit" name="action" value="
                ">Remove</button>
    <% } %>
</form>