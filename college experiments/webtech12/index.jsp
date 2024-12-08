<%@ page import="java.util.*" %> <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart</title>
  </head>
  <body>
    <h2>Product List</h2>
    <form action="cart.jsp" method="post">
      <table border="1">
        <tr>
          <th>Product</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Add to Cart</th>
        </tr>
        <tr>
          <td>Product 1</td>
          <td>$10</td>
          <td><input type="number" name="product1Qty" min="0" value="0" /></td>
          <td><input type="checkbox" name="product1" value="Product 1" /></td>
        </tr>
        <tr>
          <td>Product 2</td>
          <td>$20</td>
          <td><input type="number" name="product2Qty" min="0" value="0" /></td>
          <td><input type="checkbox" name="product2" value="Product 2" /></td>
        </tr>
        <tr>
          <td>Product 3</td>
          <td>$15</td>
          <td><input type="number" name="product3Qty" min="0" value="0" /></td>
          <td><input type="checkbox" name="product3" value="Product 3" /></td>
        </tr>
      </table>
      <br />
      <button type="submit">Add to Cart</button>
    </form>
  </body>
</html>
