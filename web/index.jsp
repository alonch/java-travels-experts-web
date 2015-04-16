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
            <title>Travel Experts - Home</title>
        </head>
        <body>
            <div class="container">
            <jsp:include page="base/nav.jsp"></jsp:include>
                <div class="bs-example" data-example-id="carousel-with-captions">
                    <div id="carousel-example-captions" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-captions" data-slide-to="0" class=""></li>
                            <li data-target="#carousel-example-captions" data-slide-to="1" class="active"></li>
                            <li data-target="#carousel-example-captions" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item">
                                <img class="center-block" data-src="holder.js/900x500/auto/#777:#777" src="http://www.geejamhotel.com/images/GJ_The-Beaches_003.jpg" data-holder-rendered="true">
                                <div class="carousel-caption">
                                    <h3>First slide label</h3>
                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                            </div>
                            <div class="item active">
                                <img class="center-block" data-src="holder.js/900x500/auto/#666:#666" src="http://www.myartguides.com/art-dubai-2013/media/k2/items/cache/832731af5d81b95ba82de72993209600_XL.jpg" data-holder-rendered="true">
                                <div class="carousel-caption">
                                    <h3>Second slide label</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="item">
                                <img class="center-block" data-src="holder.js/900x500/auto/#555:#5555" alt="900x500" src="http://www.geejamhotel.com/images/GJ_The-Beaches_003.jpg" data-holder-rendered="true">
                                <div class="carousel-caption">
                                    <h3>Third slide label</h3>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-example-captions" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

                <div class="row marketing">
                    <div class="col-lg-6">
                        <h4>Subheading</h4>
                        <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

                        <h4>Subheading</h4>
                        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                        <h4>Subheading</h4>
                        <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
                    </div>

                    <div class="col-lg-6">
                        <h4>Subheading</h4>
                        <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

                        <h4>Subheading</h4>
                        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

                        <h4>Subheading</h4>
                        <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
                    </div>
                </div>
            <jsp:include page="base/footer.jsp"></jsp:include>
            </div> <!-- /container -->
        </body>
    <jsp:include page="base/js.jsp"></jsp:include>
</html>
