package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MainDAO;
import dto.SecondHandDTO;
import dto.StudyBoardDTO;

@WebServlet("*.maincontroller")
public class MainController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cmd = request.getRequestURI();
		try {
		if (cmd.equals("/study.maincontroller")) {

		} else if (cmd.equals("/joongo.maincontroller")) {

		} else if (cmd.equals("/board.maincontroller")) {

		} else if (cmd.equals("/licence.maincontroller")) {

		} else if (cmd.equals("/allsearch.maincontroller")) {
			String select = request.getParameter("select");
			String title = request.getParameter("title");
			MainDAO dao = MainDAO.getInstance();
			List<SecondHandDTO> sdto = dao.joongosearch(select, title);
			List<StudyBoardDTO> stdto = dao.studysearch(select, title);
			request.setAttribute("sdto", sdto);
			request.setAttribute("stdto", stdto);
			request.getRequestDispatcher("/board/allSearch.jsp").forward(request, response);
		}
		}catch(Exception e) {
			e.printStackTrace();
//			response.sendRedirect("/error.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
