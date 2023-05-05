package Servlets;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    String _username = "a";
    String _password = "a";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username-field");
        String password = request.getParameter("pw-field");

        if (username.equals(_username) && password.equals(_password)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", username);

            PrintWriter out = response.getWriter();
            out.println("<h1> Successfully logged in. </h1>");

            RequestDispatcher rd = request.getRequestDispatcher(
                    "my-url");
            rd.forward(request, response);
        }
    }
}