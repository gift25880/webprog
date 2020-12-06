<%-- 
    Document   : OrderHistory
    Created on : Nov 12, 2020, 11:36:28 PM
    Author     : Khaitong Lim
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order History</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>        
    </head>
    <body>
        <div class="container-fluid">
            <div class="row rounded border badge-secondary pt-2 pb-1 sticky-top">
                <div class="col-lg-4">
                    <a href="."><i class="fa fa-home fa-2x"></i></a> <label class="h5 ml-2" id="title"> ${user.customerName}</label>
                </div>
            </div>
            <table id="product-table" class="table table-bordered table-responsive-lg table-striped rounded-pill mt-2" style="width:100%">
                <thead>
                    <tr>
                        <th>Order #</th>
                        <th>Date</th>
                        <th>Shipped Date</th>
                        <th>Status</th>
                        <th>Comments</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${user.ordersList}" var="o" varStatus="vs">
                    <tr>
                        <td>${o.orderNumber}</td>
                        <td>${o.orderDate}</td>
                        <td>${o.shippedDate}</td>
                        <td>${o.status}</td>
                        <td>${o.comments}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
