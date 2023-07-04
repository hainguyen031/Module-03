package com.example.productdiscountcalculator;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductDiscountServlet", value = "/display-discount")
public class ProductDiscountServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));
        double discountAmount = price * discount * 0.01;
        double priceAfterDiscount = price - discountAmount;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("nameProduct " + product);
        writer.println("price " + price);
        writer.println("discountAmount " + discountAmount);
        writer.println("priceAfterDiscount " + priceAfterDiscount);
        writer.println("</html>");
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String product = request.getParameter("description");
//        double price = Double.parseDouble(request.getParameter("price"));
//        double discount = Double.parseDouble(request.getParameter("discount"));
//        double discountAmount = price * discount * 0.01;
//        double priceAfterDiscount = price - discountAmount;

//        request.setAttribute("nameProduct",product);
//        request.setAttribute("price",price);
//        request.setAttribute("discountAmount",discountAmount);
//        request.setAttribute("priceAfterDiscount",priceAfterDiscount);


//        request.getRequestDispatcher("result.jsp").forward(request,response);
    }


}