<%-- 
    Document   : home
    Created on : Nov 16, 2017, 9:32:13 AM
    Author     : qmatejka
--%>

<%@page import="model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Library</title>
    </head>
    <body>
        <h1>Online Library</h1>
        <jsp:include page="/WEB-INF/searchBar.jsp" />
        <%
            if(session.getAttribute("user")==null){
        %>
                <jsp:include page="/WEB-INF/login.jsp"/>
        <%
            }else{
                out.print("Bonjour "+((User)session.getAttribute("user")).getUsername());
        %>
                <a href="home?action=disconnect">Disconnect</a>
        <%
            }
            if(request.getAttribute("searchResults") != null){
                ArrayList<Book> books = (ArrayList<Book>)request.getAttribute("searchResults");
                User user = (session.getAttribute("user")!=null) ?(User) session.getAttribute("user") : null; 
                Boolean isUser = false;
                if(user != null && !user.isAdmin()){
                    isUser=true;
                }
                for(Book book : books){
                  
        %>    
                <form name="bookForm" action="home" method="POST">
                    Name: <input type="text" name="name" size="30" value="<%=book.getName()%>" />
                    Author: <input type="text" name="author" size="30" value="<%=book.getAuthor()%>"  />
                    ISBN: <input type="text" name="isbn" size="30" value="<%=book.getIdISBN()%>" <% if(!book.getIdISBN().equals("")){%>readonly="readonly" style="background:gainsboro"<%}%>/>
                    Stock total: <input type="number" name="stockTotal" size="30" value="<%=book.getStockTotal()%>" <% if(isUser){%>readonly="readonly" style="background:gainsboro"<%}%>/>
                    Stock:  <input type="number" name="stock" size="30" value="<%=book.getStockAvailable()%>" <% if(isUser){%>readonly="readonly" style="background:gainsboro"<%}%>/>
                    <% if(user != null && user.isAdmin()){ %>
                        <button type="submit" name="action" value="update">Update</button>
                        <button type="submit" name="action" value="remove">Remove</button>
                    <% } 
                        if(isUser){
                    %>

                        <button type="submit" name="action" value="Take">Take</button>
                        <button type="submit" name="action" value="Return">Return</button>
                    <%  
                        }
                    %>
                </form>
        <%
                }
            }
        %>

        
    </body>
</html>
