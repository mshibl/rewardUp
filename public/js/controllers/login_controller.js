shiftSampleApp
	.controller('LoginCtrl', function(AuthService, $sessionStorage, $rootScope, $scope, $localStorage, $location, $http,$timeout){
		$scope.login = function(){
			$http.get('/login')
				.then(
					function(response){
						console.log(response.data.QueryResponse.Purchase);
						$sessionStorage.purchases = response.data.QueryResponse.Purchase
						$location.path('/results/');
					}, function(error) {
						console.log(error);
					})
				}

		$scope.loginView = true;
	})