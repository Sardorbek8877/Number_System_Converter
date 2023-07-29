<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Number System Converter</title>
</head>
<body>

  <h1>Number System Converter</h1>
  <form action="convert" method="post">
    <label>Enter a Number:</label>
    <label>
      <input type="text" name="number" required>
    </label>
    <br>
    <label>From base:</label>
    <label>
      <select name="fromBase">
        <option value="2"> Binary (2)</option>
        <option value="8"> Octal (8)</option>
        <option value="10" selected> Decimal (10)</option>
        <option value="16"> Hexadecimal (16)</option>
      </select>
    </label>
    <br>
    <label>To Base:</label>
    <label>
      <select name="toBase">
        <option value="2"> Binary (2)</option>
        <option value="8"> Octal (8)</option>
        <option value="10" selected> Decimal (10)</option>
        <option value="16"> Hexadecimal (16)</option>
      </select>
    </label>
    <br>
    <input type="submit" value="Convert">
  </form>
  <%
    String result = (String) request.getAttribute("result");
    if (result != null){
  %>
<h3>Result: <%= result %></h3>
<%
  }
%>

</body>
</html>