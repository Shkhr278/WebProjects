<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
</head>
<body>
    <h2>Your Cart</h2>
    <%
        HttpSession session = request.getSession();
        Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<>();
        }

        // Retrieve products selected by the user
        String[] products = request.getParameterValues("product1");
        int qty1 = Integer.parseInt(request.getParameter("product1Qty"));
        if (products != null && qty1 > 0) {
            cart.put("Product 1", qty1);
        }

        products = request.getParameterValues("product2");
        int qty2 = Integer.parseInt(request.getParameter("product2Qty"));
        if (products != null && qty2 > 0) {
            cart.put("Product 2", qty2);
        }

        products = request.getParameterValues("product3");
        int qty3 = Integer.parseInt(request.getParameter("product3Qty"));
        if (products != null && qty3 > 0) {
            cart.put("Product 3", qty3);
        }

        // Save the updated cart in the session
        session.setAttribute("cart", cart);
    %>

    <table border="1">
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
        <%
            int grandTotal = 0;
            for (Map.Entry<String, Integer> entry : cart.entrySet()) {
                String product = entry.getKey();
                int quantity = entry.getValue();
                int price = 0;

                if (product.equals("Product 1")) price = 10;
                if (product.equals("Product 2")) price = 20;
                if (product.equals("Product 3")) price = 15;

                int total = quantity * price;
                grandTotal += total;
        %>
        <tr>
            <td><%= product %></td>
            <td><%= quantity %></td>
            <td>$<%= price %></td>
            <td>$<%= total %></td>
        </tr>
        <%
            }
        %>
        <tr>
            <td colspan="3"><b>Grand Total</b></td>
            <td>$<%= grandTotal %></td>
        </tr>
    </table>
    <br>
    <form action="index.jsp">
        <button type="submit">Continue Shopping</button>
    </form>
</body>
</html>