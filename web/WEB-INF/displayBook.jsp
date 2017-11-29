<%-- 
    Document   : displayBook
    Created on : Nov 16, 2017, 9:48:07 AM
    Author     : qmatejka
--%>

<%@page import="model.Book"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <% 
                Book book = (Book)request.getAttribute("book");
                out.print(book.getName()); 
            %>
        </title>
    </head>
    <body>
        <h1><% out.print(book.getName()); %></h1>
        <li>
            <ul>ID: <% out.print(book.getIdISBN()); %></ul>
            <ul>Author: <% out.print(book.getAuthor()); %></ul>
            <ul>Stock available: <% out.print(book.getStockAvailable()); %></ul>
            <ul>Stock total: <% out.print(book.getStockTotal()); %></ul>
        </li>
    </body>
</html>