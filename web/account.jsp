<%-- 
    Document   : index
    Created on : 13-Apr-2015, 3:40:07 PM
    Author     : alonch
--%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="base/header.jsp"></jsp:include>
            <title>Travel Experts - Account</title>
        </head>
        <body>
            <div class="container">
            <jsp:include page="base/nav.jsp"></jsp:include>
                <div class="row marketing">
                    <form class="form-horizontal" novalidate="">
                        <div class="form-group">
                            <div class='col-lg-2'>
                                <label class="control-label">First name</label>
                            </div>
                            <div class='col-lg-4'>
                                <input ng-model="customer.firstName" class="form-control">
                            </div>
                            <div class='col-lg-2'>
                                <label class="control-label" >Last name</label>
                            </div>
                            <div class='col-lg-4'>
                                <input ng-model="customer.lastName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class='col-lg-2'>
                                <label class="control-label">Phone</label>
                            </div>
                            <div class='col-lg-4'>
                                <input ng-model="customer.homePhone" class="form-control">
                            </div>
                            <div class='col-lg-2'>
                                <label class="control-label">Email</label>
                            </div>
                            <div class='col-lg-4'>
                                <input ng-model="customer.email" class="form-control">
                            </div>
                        </div>
                        <button class="btn btn-default pull-right">Update</button>
                    </form>
                </div>
            <jsp:include page="base/footer.jsp"></jsp:include>
            </div> <!-- /container -->
        </body>
    <jsp:include page="base/js.jsp"></jsp:include>
</html>
