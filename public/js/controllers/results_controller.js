shiftSampleApp
  .controller('ResultsCtrl', function (UserService, AuthService, $routeParams, $scope, $http,$localStorage,$sessionStorage,$q,$location) {

      purchases = $sessionStorage.purchases;
      categories = {};
	  purchases.forEach(function(purchase){
	    if (purchase.Line[0].AccountBasedExpenseLineDetail){
	      category = purchase.Line[0].AccountBasedExpenseLineDetail.AccountRef.name
	      if(categories[category]){
	        categories[category] += purchase.TotalAmt
	      } else {
	        categories[category] = purchase.TotalAmt
	      }
	    }
	  })

	  console.log(categories)

	  calculateRewards = function(auto,ent,leg){
	  	return (categories.Automobile * auto) + (categories['Legal & Professional Fees'] * leg) + (categories['Meals and Entertainment'] * ent)
	  }

	  $scope.creditCards = [
	  	{name: 'Ink Plus® Business Credit Card', image: 'http://c1.nerdwallet.com/images/3062_M.jpg', rewards: calculateRewards(0.06,0.03,0.07)},
	  	{name: 'The Business Platinum Card® from American Express OPEN', image: 'http://c1.nerdwallet.com/images/1100_L.jpg', rewards: calculateRewards(0.05,0.04,0.06)},
	  	{name: 'Capital One® Spark® Miles for Business', image: 'http://c1.nerdwallet.com/images/11806_L.jpg', rewards: calculateRewards(0.01,0.05,0.05)},
	  	{name: 'Capital One® Spark® Classic for Business', image: 'http://c1.nerdwallet.com/images/11804_L.jpg', rewards: calculateRewards(0.01,0.03,0.05)},
	  	{name: 'Ink Cash® Business Credit Card', image: 'http://c1.nerdwallet.com/images/3063_M.jpg', rewards: calculateRewards(0.00,0.02,0.04)}
	  	]
  })