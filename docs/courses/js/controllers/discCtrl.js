var app = angular.module('app', []);

app.controller("discCtrl", ['$scope', '$http', function($scope, $http){

    // to use collapse
    $scope.collapse = function(question_id){
        var res = 'collapse_' + question_id;
        console.log(res);
    }

    /*********************************** ***********************
    ********* Select the number of questions in database *********
    ************************************************************/
    $scope.select_num = function(){
        $http.get(
            'php/select_num_questions.php'
        ).then(function(response){
            $scope.questions = response.data;
        });
    }

    /*********************************** ***********************
    ********* Select the answers Based on the question *********
    ************************************************************/
    $scope.select_ans = function(question_id){
        $http.post(
            'php/select_answers.php',
            {
                'question_id' : question_id
            }
        ).then(function(response){
            $scope.answers = response.data;
            // alert($scope.answers);
        });
    };

    /*********************************** ***********************
    ********* Add Question to the database *********
    ************************************************************/
    $scope.add_question = function (){
        $http.post(
            'php/add_question.php',
            {
                "question_body" : $scope.question_body
            }
        ).then(function(response){
            if(response.data == 1) {
                $scope.select_num();
            } else {
                alert(response.data);
            }
        })
    }

    /*********************************** ***********************
    ********* Add answer to the database *********
    ************************************************************/
    $scope.addAnswer = function( question_id, answer_body){
        $http.post(
            'php/add_answer.php',
            {
                "question_id" : question_id,
                "answer_body" : answer_body
            }
        ).then(function(response){
            if(response.data == 1){
                $scope.select_ans(question_id);
            } else {
                alert(response.data);
            }
        });
    }
}]);
