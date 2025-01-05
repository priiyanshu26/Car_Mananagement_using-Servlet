package com.jsp.servlet.car;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-car")
public class AddCarServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carid=Integer.parseInt(req.getParameter("carid"));
		String carmodel=req.getParameter("carmodel");
		String carbrand=req.getParameter("carbrand");
		String carcolor=req.getParameter("carcolor");
		int carprice=Integer.parseInt(req.getParameter("carprice"));

		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=Priyanshu@26");
			PreparedStatement pst=conn.prepareStatement("Insert into car values (?,?,?,?,?)");
			pst.setInt(1, carid);
			pst.setString(2, carmodel);
			pst.setString(3, carbrand);
			pst.setString(4, carcolor);
			pst.setInt(5, carprice);


			pst.executeUpdate();
			resp.sendRedirect("index.jsp");

		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}
