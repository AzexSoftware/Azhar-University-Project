var app = angular.module('app', []);

app.controller("registerCtrl", ["$scope", "$http", "$window", function($scope, $http, $window){
    $scope.insert = function(){
        $http.post(
            "php/insert.php",
            {
                "fname"         : $scope.fname,
                "lname"         : $scope.lname,
                "email"         : $scope.email,
                "password"      : $scope.password,
                "phone"         : $scope.phone,
                "gender"        : $scope.gender,
                "bio"           : $scope.bio,
                "position"      : $scope.position,
                "certificate"   : $scope.certificate,
                "production"    : $scope.production,
                "chmistry"      : $scope.chmistry,
                "physics"       : $scope.physics,
                "math"          : $scope.math,
                "fb"            : $scope.fb,
                "linked_in"     : $scope.linked_in,
                "github"        : $scope.github,
                "website"       : $scope.website,
            }
        ).then(function(response){
            if(response.data == 1){
                $window.location.href = "docs/room/room.htm";
            } elseif( response.data == 2) {
                alert("You must choose Your courses below");
            }
            else {
                alert(response.data);
            }
        };
    };
}]);
