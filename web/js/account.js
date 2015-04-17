var app = angular.module('Account', []);

app.controller('Controller', function ($scope, $http) {
    $scope.customer = {};
    $scope.log = "";
    $scope.save = function () {
        $scope.log = "saving...";
        $http.post("account.do", $scope.customer)
                .success(function (data) {
                    if (data){
                        $scope.ok = true;
                    }else{
                        $scope.notOk = true;
                    }
                });
    };
    $scope.closeNotOk = function(){
        $scope.notOk = undefined;
    }
    $scope.closeOk = function(){
        $scope.ok = undefined;
    }
    
});