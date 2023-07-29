package com.bek.number_system_converter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/convert")
public class NumberSystemConverterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String number = req.getParameter("number");
        int fromBase = Integer.parseInt(req.getParameter("fromBase"));
        int toBase = Integer.parseInt(req.getParameter("toBase"));

        try {
            int decimalValue = Integer.parseInt(number, fromBase);
            String result = Integer.toString(decimalValue, toBase);
            req.setAttribute("result", result);
        }
        catch (NumberFormatException e){
            req.setAttribute("result", "Invalid input! Please enter a valid number.");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
