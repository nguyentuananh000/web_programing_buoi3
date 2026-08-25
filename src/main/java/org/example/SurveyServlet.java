package org.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "SurveyServlet", value = "/survey")
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String emailUpdates = request.getParameter("emailUpdates");
        String contactVia = request.getParameter("contactVia");

        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        if (emailUpdates == null) {
            emailUpdates = "No";
        }

        User user = new User(firstName, lastName, email, dob, heardFrom, wantsUpdates, emailUpdates, contactVia);
        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/thanks.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
