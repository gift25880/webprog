<%-- 
    Document   : Profile
    Created on : Nov 12, 2020, 8:07:37 PM
    Author     : Khaitong Lim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classic Model Online</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row rounded border badge-secondary pt-2 pb-1 sticky-top">
                <div class="col-lg-4">
                    <a href="."><i class="fa fa-home fa-2x"></i></a> <label class="h5 ml-2" id="title"> ${user.customerName}</label>
                </div>
            </div>
            <div class="col-md-8 order-md-1">
                <form class="needs-validation" novalidate>
                    <h4>Contact:</h4>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">First name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="${user.contactFirstName}" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Last name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="${user.contactLastName}" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="email">Email <span class="text-muted">(Optional)</span></label>
                        <input type="email" class="form-control" id="email">
                    </div>
                    <h4>Address:</h4>
                    <div class="mb-3">
                        <label for="address">Address Line 1</label>
                        <input type="text" class="form-control" id="address" value="${user.addressLine1}" required>
                    </div>

                    <div class="mb-3">
                        <label for="address2">Address Line 2 <span class="text-muted">(Optional)</span></label>
                        <input type="text" class="form-control" id="address2" value="${user.addressLine2}">
                    </div>

                    <div class="row">
                        <div class="col-md-5 mb-3">
                            <label for="country">Country</label>
                            <select class="custom-select d-block w-100" id="country" required>
                                <option>${user.country}</option>
                            </select>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="state">State</label>
                            <select class="custom-select d-block w-100" id="state" required>
                                <option>${user.state==null?'-' : user.state}</option>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="zip">Zip</label>
                            <input type="text" class="form-control" id="zip" value="${user.postalCode}" required>
                        </div>
                    </div>
                    <hr class="mb-4">
            </div>
        </div>
    </body>
</html>
