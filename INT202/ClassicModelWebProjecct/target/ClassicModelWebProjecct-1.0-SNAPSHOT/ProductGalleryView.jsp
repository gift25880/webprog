<%-- 
    Document   : ProductGalleryView
    Created on : Oct 29, 2020, 7:34:10 PM
    Author     : Khaitong Lim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classic Model :: Product Gallery</title>
        <!--        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" type="text/javascript"></script>-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                            <a class="dropdown-item" href="ProductList?view=list&productDescription=${param.productDescription}"><i class="fa fa-list"></i> List View</a>
                            <a class="dropdown-item" href="ProductList?view=gallery&productDescription=${param.productDescription}"><i class="fa fa-th"></i> Gallery View</a>
                        </div>
                        <!--<i class="fa fa-cart-plus  ml-2" style="font-size: 1.5em"></i>-->
                        <img src="images/cart.png" height="29" class="ml-2"/>
                    </form>
                </div>
            </div>
            <div class="row ml-3">
                <c:forEach items="${products}" var="p" varStatus="vs">
                    <div class="col-2 border border-primary rounded mx-2 my-3">
                        <div class="img-thumbnail border-0">
                            <img src="model-images/${p.productLine.productLine}/${p.productCode}.jpg" height="120" width="180"/>
                        </div>
                        <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px;">
                            <span style="margin-left: -2px;font-size: 1.5em">
                                <a href="AddItemToCart?productCode=${p.productCode}"><i class="fa fa-cart-plus"></i></a>
                            </span>
                            ${p.productName}
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
