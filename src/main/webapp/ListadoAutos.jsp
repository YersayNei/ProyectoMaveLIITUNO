<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
    <%@page import="model.TblAuto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h1>Listado de Autos</h1>
    <table>
        <thead>
            <tr>
                <th>Codigo</th>
                <th>Color</th>
                <th>Modelo</th>
                <th>Motor</th>
                <th>Placa</th>     
                <th></th>
            </tr>
        </thead>
        <tbody>
            <%
                List<TblAuto> listar = (List<TblAuto>) request.getAttribute("listado");
                for (TblAuto lis : listar) {
                    if (lis != null) {
            %>
            <tr>
                <td><%=lis.getIdauto() %></td>
                <td><%=lis.getColor() %></td>
                <td><%=lis.getModelo() %></td>
                <td><%=lis.getMotor() %></td>
                <td><%=lis.getPlaca() %></td>
                
               
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>