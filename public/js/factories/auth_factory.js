shiftSampleApp
	.factory('AuthService', function(UserService,$http,$sessionStorage,$localStorage,$q){
		var authService = {};

		authService.logout = function(){
			var deferred = $q.defer()
			$http.delete('/users/'+$localStorage.currentUser.id+'/logout')
				.then(function(res){
					$localStorage.$reset()
					$sessionStorage.$reset()
					deferred.resolve(res)
				})
			return deferred.promise;
		};

		return authService;
	})