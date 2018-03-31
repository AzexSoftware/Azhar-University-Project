var app = angular.module('app', []);
app.controller('formController', ["$scope", "$http", "$window", function($scope, $http, $window){
    /************************
    **********************
    ** Insert Function (student)
    *** (Registratin Form)
    *********************
    ***********************/
    $scope.insert = function(){
        // if($scope.firstName_student && $scope.lastName_student && $scope.email_student && $scope.password_student && $scope.conPassword_student && $scope.year_student && $scope.gender_student && $scope.department_student && $scope.national) {
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
                    "department_student"    : $scope.department_student,
                    "national"              : $scope.national
                }
            ).then(function(response){
                if(response.data == 1){
                    // go to courses page
                    $window.location.href = 'Azhar-University-Project-master/docs/room/room.htm';
                }
            });
        // } else {
        //     alert("You must fill out all the information!");
        // }
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
            $window.location.href = "Azhar-University-Project-master/docs/register(pro)/register_pro.htm";
        } else {
            alert("You must Fill out with correct information!");
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
                $window.location.href = "Azhar-University-Project-master/docs/room/room.htm";
            } else {
                // alert("You must register first!");
                alert(response.data);
            }
        })
    }

}]);
