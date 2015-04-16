var app = angular.module('Login', []);

app.controller('Controller', function ($scope, $http, $window) {
    $scope.user = {};
    $scope.log = "";
    $scope.check = function () {
        $scope.log = "checking information...";
        $http.post("login.do", $scope.user)
                .success(function (data) {
                    if (data) {
                        $window.location.href = "account.jsp";
                    } else {
                        $scope.log = "user or password do not match";
                    }
                })
    }
});