<%-- 
    Document   : ProductDataTable
    Created on : Nov 5, 2020, 11:45:33 PM
    Author     : Khaitong Lim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classic Model :: Product List</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>        
        
        <script>
            $(document).ready(function () {
                //$('#product-table').DataTable();
            });
        </script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row rounded border badge-secondary pt-2 pb-1">
                <div class="col-lg-2">
                    <label class="h5">Product Gallery ::</label>
                </div>
                <div class="col-10">
                    <form id="searchForm" action="ProductList" method="POST">
                        <input type="text" class="w-75" name="productDescription" value="${param.productDescription}" required />
                        <button class="btn btn-outline-light ml-2" onclick="$('searchForm').submit()"><i class="fa fa-search"></i></button> 
                        <button type="button" class="btn btn-outline-light dropdown-toggle ml-2" data-toggle="dropdown">
                            <i class="fa fa-list"></i>
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#"><i class="fa fa-list"></i> List View</a>
                            <a class="dropdown-item" href="#"><i class="fa fa-th"></i> Gallery View</a>
                        </div>
                        <!--<i class="fa fa-cart-plus  ml-2" style="font-size: 1.5em"></i>-->
                        <img src="images/cart.png" height="29" class="ml-2"/>
                    </form>
                </div>
            </div>
            <table id="product-table" class="table table-bordered table-responsive-lg table-striped rounded-pill mt-2" style="width:100%">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Product Line</th>
                        <th>Scale</th>
                        <th>Price</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products}" var="p" varStatus="vs">
                        <tr>
                            <td>
                                <img src="model-images/${p.productLine.productLine}/${p.productCode}.jpg" 
                                     height="40" width="60" class="rounded-circle"/>
                            </td>
                            <td>${p.productCode}</td>
                            <td>${p.productName}</td>
                            <td>${p.productLine.productLine}</td>
                            <td>${p.productScale}</td>
                            <td>${p.msrp}</td>
                            <td style="width: 40%">${p.productDescription}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
