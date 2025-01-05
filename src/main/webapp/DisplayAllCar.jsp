<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Cars Details</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f8f9fa; color: #333; margin: 0; padding: 20px;">

    <div style="text-align: center; margin-bottom: 20px;">
        <h1 style="color: #007bff; font-size: 2.5em; margin-bottom: 10px;">All Cars Details</h1>
    </div>

    <table border="1" style="width: 100%; border-collapse: collapse; margin: 20px 0; background-color: #fff;">
        <tr style="background-color: #007bff; color: white;">
            <th style="padding: 10px; border: 1px solid #ddd;">CarId</th>
            <th style="padding: 10px; border: 1px solid #ddd;">CarModel</th>
            <th style="padding: 10px; border: 1px solid #ddd;">CarBrand</th>
            <th style="padding: 10px; border: 1px solid #ddd;">CarColor</th>
            <th style="padding: 10px; border: 1px solid #ddd;">CarPrice</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Update</th>
            <th style="padding: 10px; border: 1px solid #ddd;">Delete</th>
        </tr>

        <% 
            // Fetch the ResultSet from the request attribute
            ResultSet rs = (ResultSet) request.getAttribute("resultSet");
            if (rs != null) {
                while (rs.next()) { 
        %>
        <tr style="text-align: center;">
            <td style="padding: 10px; border: 1px solid #ddd;"><%= rs.getInt(1) %></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><%= rs.getString(2) %></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><%= rs.getString(3) %></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><%= rs.getString(4) %></td>
            <td style="padding: 10px; border: 1px solid #ddd;"><%= rs.getInt(5) %></td>
            <td style="padding: 10px; border: 1px solid #ddd;">
                <a href="find-car-by-id?carid=<%= rs.getInt(1) %>" style="color: #007bff; text-decoration: none;">Update</a>
            </td>
            <td style="padding: 10px; border: 1px solid #ddd;">
                <a href="delete-car-by-id?carid=<%= rs.getInt(1) %>" style="color: red; text-decoration: none;">Delete</a>
            </td>
        </tr>
        <% 
                }
            } else { 
        %>
        <tr>
            <td colspan="7" style="padding: 10px; text-align: center; border: 1px solid #ddd;">
                No car details available.
            </td>
        </tr>
        <% 
            }
        %>
    </table>

    <div style="text-align: center; margin-top: 20px;">
        <a href="index.jsp" style="display: inline-block; padding: 10px 20px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px;">Return Back to Dashboard</a>
    </div>

</body>
</html>
