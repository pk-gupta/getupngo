/**
 * 
 */

 var app = angular.module('myApp', []);
            
            app.controller('customersCtrl', function($scope, $http) {
            	
            	$scope.Address=[];
            	$scope.Distance=[];
            	$scope.msg=[];
            	$scope.call=function(type)
        		{
            		var place=document.getElementById('autocomplete').value;
                	var radius=document.getElementById('radius').value;
              $http.get("http://192.168.63.48:8090/placefinderJson/search/"+type+"?place="+place+"&radius="+radius)
              				.success(function (response) 
              				{
              					
              					$scope.Address = response.Address;
              					$scope.Distance = response.Distance;
              					$scope.msg=response.msg;
              				});
        		}
            			});
		