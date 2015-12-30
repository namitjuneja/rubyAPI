var app = angular.module('main-app' , []);

// service to access initial data for the first 10 elements
app.factory('myService', function($http) 
{

      var getData = function() 
      {

      //ajax request
      return $http({method:"GET", url:"http://educruby.herokuapp.com/type1"}).then(function(result)
      {
            return result.data;
      });

      };

      return { getData: getData };
});

// main controller containing the divs
app.controller("main-controller", function($scope, myService)
{

 	var myDataPromise = myService.getData();

 	myDataPromise.then(function(result) 

      // this is only run after $http completes
      {  

 	      $scope.data_main = result;
 	      // console.log($scope.data_main);
       });

});



app.$inject = ['$scope'];

//directive wich binds the individual divs with ajax function
app.directive("boxCreator", function($compile, $http)
{   
      return {

	      restrict: 'A',
	      link: function(scope , element)
	      {        
	            element.bind("click", function(e)
	            {
	           
		            console.log("Element clicked : " .concat( String(element[0].id) ));

		            target_url = "http://educruby.herokuapp.com/type2/?num=".concat(String (element[0].id) );

		             //ajax request
		            var secondary_content = $http({method:"GET", url:target_url}).then(function(result)
		            {
		                          return result.data.content;
		            });

		            //this is executed only after the ajax request is completed and the result is stored in secondary_content
		            secondary_content.then(function(result)
		            {
		               	var new_element = "<div width='100px' class='warning button'>".concat( String(result), "</div>");
		               	var childNode = $compile(new_element)(scope);
		            		element.parent().parent().append(childNode);
		        	});    

	            });           
                   }

      	}

});

