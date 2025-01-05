package com.jsp.servlet.car;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/save-updated-car")
public class SaveUpdatedCarServlet extends HttpServlet {

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

			PreparedStatement pst=conn.prepareStatement("update car set carmodel=?,carbrand=?,carcolor=?,carprice=? where carid=?");

			pst.setString(1, carmodel);
			pst.setString(2, carbrand);
			pst.setString(3, carcolor);
			pst.setInt(4, carprice);
			pst.setInt(5, carid);

			pst.execute();

			resp.sendRedirect("display-all-car");

		} catch (ClassNotFoundException | SQLException e) {
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

