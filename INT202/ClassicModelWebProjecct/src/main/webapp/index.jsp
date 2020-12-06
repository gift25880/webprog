<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Classic Model Online</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5px auto; /* 15% from the top and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button */
            .close {
                /* Position it in the top right corner outside of the modal */
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }

            /* Close button on hover */
            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {-webkit-transform: scale(0)}
                to {-webkit-transform: scale(1)}
            }

            @keyframes animatezoom {
                from {transform: scale(0)}
                to {transform: scale(1)}
            }
        </style>
    </head>
    <body>
        <div class="container-fluid m-4 p-4">
            <h3>Classic Model Home Page ::</h3><hr>
            <div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="ProductList"><i class="fa fa-car"></i> View Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa fa-bank"></i> Offices</a>
                    </li>   
                    <li class="nav-tabs"></li>
                    <li class="nav-item">
                        <a class="nav-link" href="OrderHistory"><i class="fa fa-history"></i> View Order History</a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link" href="ViewProfile"><i class="fa fa-address-card-o"></i> Your Profile</a>
                    </li>                    
                    <li class="nav-tabs"></li>
                    <li class="nav-item">
                        <c:choose>
                            <c:when test="${user==null}">
                                <label class="nav-link" onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;cursor: pointer">
                                    <i class="fa fa-user"></i> Log in
                                </label>
                            </c:when>
                            <c:otherwise>
                                <a class="nav-link" href="Logout"><i class="fa fa-user"></i> Logout</a>
                            </c:otherwise>
                        </c:choose>
                        </li>      
                    </ul>
                </div>
            </div>
            <!-- The Modal -->
            <div id="id01" class="modal w-50">
                <span onclick="document.getElementById('id01').style.display = 'none'"
                      class="close" title="Close Modal">&times;</span>

                <!-- Modal Content -->
                <form class="modal-content animate" action="Login" method="post">
                    <div class="imgcontainer">
                        <img src="images/avatar.jpg" alt="Avatar" class="avatar" height="120">
                        <span class="text-danger">${message}</span>
                    </div>

                    <div class="container">
                        <label for="uname"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="username" required class='w-100'>

                        <label for="psw"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required class='w-100'>

                        <button type="submit" class='btn-outline-success mt-2 w-100'>Login</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn btn-outline-danger">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </div>
            <c:if test="${message!=null}">
                <script>
                    $(document).ready(function () {
                        document.getElementById('id01').style.display = 'block';
                    });
                </script>
            </c:if>
        </body>
    </html>