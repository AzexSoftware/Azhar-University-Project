var app = angular.module("app", []);
app.controller('myCtrl', ['$rootScope', 'Session', function($rootScope, Session){
    Session.then(function(response){
        $rootScope.session = response;
    });


}]);

app.factory('Session', function($http){
    return $http.get(
        '../../general/php/session.php'
    ).then(function(result){
        return result.data;
    });
});
