<!-- INdex bbbbbbbbbb  page -->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Get up and go</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script type="text/javascript">
  var autocomplete;
            function initialize() {
              autocomplete = new google.maps.places.Autocomplete(
                  (document.getElementById('autocomplete')),
                  { types: ['geocode'] });
              google.maps.event.addListener(autocomplete, 'place_changed', function() {
              });
              
              navigator.geolocation.getCurrentPosition(GetLocation);
              function GetLocation(location) {
            	  var ltln=location.coords.latitude+","+location.coords.longitude;
            	  document.getElementById('autocomplete').value=ltln;
            	  document.getElementById('radius').value=1000;
                  //alert(location.coords.accuracy);
              }
            }
                      
            
</script>
<script>
		
			
            var app = angular.module('myApp', []);
            
            app.controller('customersCtrl', function($scope, $http) {
            	
            	$scope.Address=[];
            	$scope.Distance=[];
            	$scope.msg=[];
            	$scope.call=function(type)
        		{
            		var place=document.getElementById('autocomplete').value;
                	var radius=document.getElementById('radius').value;
              $http.get("http://192.168.63.47:8090/placefinderJson/search/"+type+"?place="+place+"&radius="+radius)
              				.success(function (response) 
              				{
              					
              					$scope.Address = response.Address;
              					$scope.Distance = response.Distance;
              					$scope.msg=response.msg;
              				});
        		}
            			});
		
 	</script>
<style type="text/css">
.page-header{
        margin-top: 10px;
        position: relative;
        background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%);
        background-color: #1B9B2A;
        
    }
    .page-footer{
        margin-bottom: 10px;
        position: relative;
        background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%);
        background-color: #1B9B2A;
        
    }
    
body{
      background-color: #1B9B2A;
    }
a {
  color: #03FF0E;
  font-size: 20px;
  text-decoration: none;

}
    
    p{
        padding: 15px;
        font-size: 20px;
        font-weight: bold;
        color: #03FF0E;
        text-align: center;
        
    }
    p.search{
        padding: 15px;
        font-size: 40px;
        font-weight: bold;
        color:black;
        text-align: center;
          background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%);
        background-color: #1B9B2A;
        
    }
    h2,h4{
        padding: 15px;
        font-size: 40px;
        font-weight: bold;
        color: #03FF0E;
        text-align: center;
          background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%);
        background-color: #1B9B2A;
    }
    body{
   background: -moz-linear-gradient(45deg,  rgba(30,87,153,1) 0%, rgba(125,185,232,0) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,rgba(30,87,153,1)), color-stop(100%,rgba(125,185,232,0))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* IE10+ */
background: linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799', endColorstr='#007db9e8',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */


    }
    body{
       background-color: #1B9B2A;
    }

    .page-footer{
        background-color: #5bc0de;
        margin-bottom: 10px;
        position: relative;
       
    } 
    .table-responsive{
      border: 0px solid #5ba0de;

    }
      td{
      border: 1px solid #bbb;
       background: -moz-linear-gradient(45deg,  rgba(30,87,153,1) 0%, rgba(125,185,232,0) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,rgba(30,87,153,1)), color-stop(100%,rgba(125,185,232,0))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* IE10+ */
background: linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799', endColorstr='#007db9e8',GradientType=1 );
font-size: 20px;
color: white; 
    }
    
    .form-control{
      background: -moz-linear-gradient(45deg,  rgba(30,87,153,1) 0%, rgba(125,185,232,0) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,rgba(30,87,153,1)), color-stop(100%,rgba(125,185,232,0))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* IE10+ */
background: linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799', endColorstr='#007db9e8',GradientType=1 );
font-size: 20px;
color: white; 
    }
    .pac-container{
    
background: rgba(30,87,153,1) ;
font-size: 20px;
    }
    
    div.scrollable {
     
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    overflow: scroll;
}

.jumbotron 
{
	background: -webkit-linear-gradient(45deg,  rgba(30,87,153,1) 0%,rgba(125,185,232,0) 100%);
        background-color: #1B9B2A;
       color: #03FF0E;
}
    
</style>

</head>
<body onload="initialize()">
	<!-- Open the output in a new blank tab (Click the arrow next to "Show Output" button) and resize the window to understand how the Bootstrap responsive grid system works. -->
    <div class="container">
       


        <header class="page-header">
        <div class="row">
            <div class="col-md-12"><h2>Get up 'n' Go</h2></div>
        </div>
       </header>



  <div class="table-responsive">
    <form class=" " role="search">
    <div ng-app="myApp" ng-controller="customersCtrl">
       <table class="table">  
       		<tr>
        		<div class="row">
          			<div class="col-md-6">
            
        				<h3><input id="autocomplete" type="text" class="form-control" placeholder="Enter Your Addres" name="place"/></h3>
        			</div>
          			<div class="col-md-6"><h3><input id="radius" type="search" class="form-control" placeholder="Enter Circle Range in metres" name="radius"/><h3>
          			</div>
        		</div>
       		</tr>   
      		<tr>
        		<td><p><a id="atm" ng-click="call('atm');">Atm</a></p></td> 

				<td width="80%" height="14.6%" rowspan="7">
					<div class="scrollable">
			
						<h4>{{msg[0]}}</h4>
			<div class="jumbotron" ng-repeat="x in Address">
       			 		
    					<h3>{{ x.name}}</h3>
							<br>
						{{x.vicinity}}<br>
						Rating : {{x.rating}}<br>
						{{Distance[$index].distance.value/1000}} km <br><br>
						<input type="button" value="Submit Feedback">
  				
       		</div>
       				</div>
       			</td>
      		</tr>
      		<tr>
       			<td><p><a id="hospital" ng-click="call('hospital');">Hospital</a></p></td> 
      		</tr>
       		<tr>
     			<td><p><a id="amusement_park" ng-click="call('amusement_park');">Tourist Place</a></p></td>
    		</tr>
     		<tr>
        		<td><p><a id="bus_station" ng-click="call('bus_station');">Bus Stand</a></p></td> 
      		</tr>
      		<tr>
       			<td><p><a id="train_station" ng-click="call('train_station');">Railway Station</a></p></td> 
        	</tr>
       		<tr>
         		<td ><p><a id="airport" ng-click="call('airport');">Airport</a></p></td>    
      		</tr>
      		<tr>
         		<td ><p><a id="post_office" ng-click="call('post_office');">post office</a></p></td>    
      		</tr>
    	</table>
    </div>
    
    </form>
    
    <footer class="page-footer">
            <div class="row">
                  <div class="col-md-12"><p>Copyright &copy; 2015 Marlabs Inc. All Rights Reserved</p></div>   
        	</div>
    </footer>
  </div>
         
</div>
</body>
</html>  