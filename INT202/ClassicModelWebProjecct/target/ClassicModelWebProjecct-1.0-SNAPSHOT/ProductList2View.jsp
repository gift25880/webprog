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
        <link href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" rel="stylesheet">
        <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>                
    </head>
    <body>
        <div class="container-fluid">
            <div class="row rounded border badge-secondary pt-2 pb-1 sticky-top">
                <div class="col-lg-2">
                    <a href="."><i class="fa fa-home fa-2x"></i></a> <label class="h5" id="title">Product Gallery ::</label>
                </div>
                <div class="col-10">
                    <form id="searchForm" action="ProductList" method="get">
                        <input type="hidden" name="selectedView" id="selectedView"/>
                        <input type="text" class="w-75" name="productDescription" value="${param.productDescription}" required />
                        <button class="btn btn-outline-light ml-2" onclick="$('searchForm').submit()"><i class="fa fa-search"></i></button> 
                        <button id="selected" type="button" class="btn btn-outline-light dropdown-toggle ml-2" data-toggle="dropdown">
                            <i  class="fa fa-th"></i>
                        </button>
                        <div class="dropdown-menu">
                            <span class="dropdown-item btn" id="galleryMenuItem"><i class="fa fa-th"></i> Gallery View</span>
                            <span class="dropdown-item btn" id="listMenuItem"><i class="fa fa-list"></i> List View</span>
                        </div>
                        <!--<i class="fa fa-cart-plus  ml-2" style="font-size: 1.5em"></i>-->
                        <img src="images/cart.png" height="29" class="btn ml-2 p-0" onclick="viewCart()"/>
                        <span class="btn rounded-pill btn-warning my-0 py-0 px-1" id="no_of_item" style="margin-left: -10px;">${cart.size}</span>
                    </form>
                </div>
            </div>
            <div class="row ml-3" id="galleryview">
                <c:forEach items="${products}" var="p" varStatus="vs">
                    <div class="col-2 border border-primary rounded mx-2 my-3">
                        <div class="img-thumbnail border-0">
                            <img src="model-images/${p.productLine.productLine}/${p.productCode}.jpg" height="120" width="180"/>
                        </div>
                        <div style="font-size: 0.7em; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;width: 200px;">
                            <span style="font-size: 1.5em">
                                <button class="btn btn-outline-primary border-0" onclick="addItemToCart('${p.productCode}')"><i class="fa fa-cart-plus"></i></button>
                            </span>
                            ${p.productName}
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="row ml-3" id="listview">
                <table id="product-table" class="table table-bordered table-responsive-lg table-striped rounded mt-2" style="width:100%">
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
                                    <span style="margin-left: -50px;">
                                        <button class="btn mt-5 btn-outline-primary border-0" onclick="addItemToCart('${p.productCode}')">
                                            <i class="fa fa-cart-plus"></i>
                                        </button>
                                    </span>
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
        </div>
        <div id="id01" class="modal ml-5 mt-5 w-50 bg-light rounded">
            <span onclick="document.getElementById('id01').style.display = 'none'"
                  class="close btn p-0" title="Close Modal">&times;</span>

            <!-- Modal Content -->
            <div class="container" id="cartInfo">
                <!-- Call Servlet with Ajax -->
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $("#product-table").DataTable();
                toggleView("${param.selectedView==null?'gallery' : param.selectedView}");

                $("#listMenuItem").click(function () {
                    toggleView("list");
                });
                $("#galleryMenuItem").click(function () {
                    toggleView("gallery");
                });

                function toggleView(view) {
                    if (view == 'list') {
                        $("#galleryview").hide();
                        $("#listview").show();
                        $("#selected").html($('<i/>', {class: 'fa fa-list'}));
                        $("#title").html('Product List ::')
                        $("#selectedView").val("list");
                    } else {
                        $("#listview").hide();
                        $("#galleryview").show();
                        $("#selected").html($('<i/>', {class: 'fa fa-th'}));
                        $("#title").html('Product Gallery ::')
                        $("#selectedView").val("gallery");
                    }
                }
            });

            function addItemToCart(productCode) {
                $.ajax({
                    url: "AddItemToCart",
                    type: "get", //send it through get method
                    data: {
                        productCode: productCode
                    },
                    success: function (response) {
                        $("#no_of_item").html(response);
                        animateCart();
                    },
                    error: function (xhr) {
                        alert(xhr);
                    }
                });
            }
            function viewCart() {
//                $("#id01").show();
                $.ajax({
                    url: "ViewCart",
                    type: "get", //send it through get method
                    success: function (response) {
                        $("#cartInfo").html(response);
                        $("#id01").show();
                    },
                    error: function (xhr) {
                        alert("Ajax call failed, Server Error !!!");
                    }
                });
            }

            function animateCart() {
                $("#no_of_item").animate({
                    height: '+=20px',
                    width: '+=20px'
                });
                $("#no_of_item").animate({
                    height: '-=20px',
                    width: '-=20px'
                });
            }
        </script>        
    </body>
</html>
