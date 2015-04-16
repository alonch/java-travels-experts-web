<%-- 
    Document   : index
    Created on : 13-Apr-2015, 3:40:07 PM
    Author     : alonch
--%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" ng-app="Login">
    <head>
        <jsp:include page="base/header.jsp"></jsp:include>
            <title>Travel Experts - Login</title>
        </head>
        <body>
            <div class="container">
            <jsp:include page="base/nav.jsp"></jsp:include>

                <form novalidate="">
                    <div class="col-sm-6 col-sm-offset-3" ng-controller="Controller">
                        <h2 class="form-signin-heading">Please sign in</h2>
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input ng-model="user.email" type="text" id="inputEmail" class="form-control" placeholder="Email address">
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input ng-model="user.password" type="password" id="inputPassword" class="form-control" placeholder="Password">
                        <label ng-bind="log"></label>
                        <button class="btn btn-lg btn-primary btn-block" ng-click="check()">Sign in</button>
                    </div>
                </form>
            </div> <!-- /container -->
        
        </body>
    <jsp:include page="base/js.jsp"></jsp:include>
    <script src="js/login.js" type="text/javascript"></script>
</html>
