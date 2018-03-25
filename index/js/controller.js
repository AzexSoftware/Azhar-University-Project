var app = angular.module('app', []);
app.controller('formController', ["$scope", "$http", "$window", function($scope, $http, $window){

    /************************
    **********************
    ** Insert Function (student)
    *** (Registratin Form)
    *********************
    ***********************/
    $scope.insert = function(){
        $http.post(
            "index/php/insert_student.php",
            {
                "firstName_student"     : $scope.firstName_student,
                "lastName_student"      : $scope.lastName_student,
                "email_student"         : $scope.email_student,
                "password_student"      : $scope.password_student,
                "conPassword_student"   : $scope.conPassword_student,
                "year_student"          : $scope.year_student,
                "gender_student"        : $scope.gender_student,
                "department_student"    : $scope.department_student
            }
        ).then(function(response){
            // go to courses page
            $window.location.href = '/docs/courses/courses.htm';
        })
    }

    /************************
    **********************
    ** check Professor or not
    *** (Registratin Form)
    *********************
    ***********************/
    $scope.check = function(){
        name     = $scope.name_check;
        password = $scope.pass_check;
        if(name == "admin" && password == "admin"){
            $window.location.href = "/docs/courses/courses.htm";
        } else {
            $window.location.href = "/index.htm";
        }
    }
    /************************
    **********************
    *** (login Form) in session file
    *********************
    ***********************/
    $scope.login = function(){
        $http.post(
            "index/php/login.php",
            {
                "login_name" : $scope.login_name,
                "login_pass" : $scope.login_pass
            }
        ).then(function(response){
            if(response.data == "found_pro" || response.data == "found_student") {
                $window.location.href = "docs/room/room.htm";
            } else {
                alert("You must register first!");
            }
        })
    }

}]);
