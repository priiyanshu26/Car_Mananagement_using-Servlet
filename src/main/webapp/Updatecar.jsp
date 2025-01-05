<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Car Details</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f8f9fa; color: #333; margin: 0; padding: 20px;">

    <div style="text-align: center; margin-bottom: 20px;">
        <h1 style="color: #007bff; font-size: 2.5em; margin-bottom: 10px;">Update Car Details</h1>
    </div>

    <%
        ResultSet rs = (ResultSet) request.getAttribute("resultSet");
        if (rs != null && rs.next()) {
    %>
    <form action="save-updated-car" method="post" style="max-width: 400px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <div style="margin-bottom: 15px;">
            <label for="carid" style="display: block; font-weight: bold; margin-bottom: 5px;">Car ID</label>
            <input type="number" value="<%= rs.getInt(1) %>" name="carid" readonly="readonly" style="width: 100%; padding: 8px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px; background-color: #f1f1f1;">
        </div>
        <div style="margin-bottom: 15px;">
            <label for="carmodel" style="display: block; font-weight: bold; margin-bottom: 5px;">Car Model</label>
            <input type="text" value="<%= rs.getString(2) %>" name="carmodel" style="width: 100%; padding: 8px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px;">
        </div>
        <div style="margin-bottom: 15px;">
            <label for="carbrand" style="display: block; font-weight: bold; margin-bottom: 5px;">Car Brand</label>
            <input type="text" value="<%= rs.getString(3) %>" name="carbrand" style="width: 100%; padding: 8px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px;">
        </div>
        <div style="margin-bottom: 15px;">
            <label for="carcolor" style="display: block; font-weight: bold; margin-bottom: 5px;">Car Color</label>
            <input type="text" value="<%= rs.getString(4) %>" name="carcolor" style="width: 100%; padding: 8px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px;">
        </div>
        <div style="margin-bottom: 15px;">
            <label for="carprice" style="display: block; font-weight: bold; margin-bottom: 5px;">Car Price</label>
            <input type="number" value="<%= rs.getInt(5) %>" name="carprice" style="width: 100%; padding: 8px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px;">
        </div>
        <div style="text-align: center;">
            <input type="submit" value="Update" style="background-color: #007bff; color: white; padding: 10px 20px; font-size: 1.2em; border: none; border-radius: 4px; cursor: pointer; transition: background-color 0.3s;">
        </div>
    </form>
    <% 
        } else {
            out.println("<p>No car details available for update.</p>");
        }
    %>

</body>
</html>
