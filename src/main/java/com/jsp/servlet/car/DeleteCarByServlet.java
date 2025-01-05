package com.jsp.servlet.car;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/delete-car-by-id")
public class DeleteCarByServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carid=Integer.parseInt(req.getParameter("carid"));
		System.out.println("one");
		Connection conn=null;
		System.out.println("2");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("3");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=Priyanshu@26");
			PreparedStatement pst=conn.prepareStatement("delete from car where carid=?");
			System.out.println("4");
			pst.setInt(1, carid);
			pst.executeUpdate();
			resp.sendRedirect("display-all-car");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
