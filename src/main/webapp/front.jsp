
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
              $http.get("http://192.168.63.48:8090/placefinderJson/search/"+type+"?place="+place+"&radius="+radius)
              				.success(function (response) 
              				{
              					
              					$scope.Address = response.Address;
              					$scope.Distance = response.Distance;
              					$scope.msg=response.msg;
              				});
        		}
            			});
		
 	</script>
<!-- <style type="text/css">
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
    
</style> -->



    <style type="text/css">
           #check { display: none; }

.main,
.container {
  margin: auto;
  position: absolute;
  top: 150px;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background-color: red;

}
.scrollable{
position:relative;
top: 700px;
overflow: scroll;
height: 300px;

}
.page-footer{
        background-color: #5bc0de;
        margin-bottom: 10px;
        position: relative;
       top:700px
    } 
.main {
  background-color: #B81365;
  box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.35);
  cursor: pointer;
  z-index: 50;
}

.main:hover { background-color: #cf1572; }

.main:active {
  box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.35), inset 1px 2px 2px rgba(0, 0, 0, 0.35);
  background-color: #a11158;
}

.main .title {
  margin: auto;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100px;
  font-size: 2em;
  line-height: 80px;
  text-align: center;
  color: #fafafa;
}

.container { z-index: 10; 

}

.plate {
  margin: auto;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 150px;
  height: 150px;
  opacity: 0;
  border-radius: 50%;
  box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.35);
  -webkit-transition: all 0.4s ease-in;
  -moz-transition: all 0.4s ease-in;
  transition: all 0.4s ease-in;
}
li{
  margin: auto;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 150px;
  height: 150px;
  opacity: 0;
  border-radius: 50%;
  box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.35);
  -webkit-transition: all 0.4s ease-in;
  -moz-transition: all 0.4s ease-in;
  transition: all 0.4s ease-in;
  
  
}

.plate p {
  width: 100%;
  font-size: 2em;
  line-height: 153px;
  text-align: center;
  color: #333;
}

.plate:hover p { color: #444; }

.plate:nth-of-type(n) {
  background-color: rgba(109, 231, 200, 0.3);
  /*-webkit-transition-delay: 0s;
  -moz-transition-delay: 0s;
  transition-delay: 0s;*/
}/*

.plate:nth-of-type(2) {
  background-color: rgba(243, 156, 80, 0.1);
  -webkit-transition-delay: 0.1s;
  -moz-transition-delay: 0.1s;
  transition-delay: 0.1s;
}

.plate:nth-of-type(3) {
  background-color: rgba(247, 80, 173, 0.1);
  -webkit-transition-delay: 0.2s;
  -moz-transition-delay: 0.2s;
  transition-delay: 0.2s;
}

.plate:nth-of-type(4) {
  background-color: rgba(80, 128, 136, 0.5);
  -webkit-transition-delay: 0.3s;
  -moz-transition-delay: 0.3s;
  transition-delay: 0.3s;
}

.plate:nth-of-type(5) {
  background-color: rgba(191, 95, 80, 0.9);
  -webkit-transition-delay: 0.4s;
  -moz-transition-delay: 0.4s;
  transition-delay: 0.4s;
}

.plate:nth-of-type(6) {
  background-color: rgba(101, 128, 216, 0.7);
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  transition-delay: 0.5s;
}

.plate:nth-of-type(7) {
  background-color: rgba(210, 80, 80, 0.2);
  -webkit-transition-delay: 0.6s;
  -moz-transition-delay: 0.6s;
  transition-delay: 0.6s;
}

.plate:nth-of-type(8) {
  background-color: rgba(114, 89, 202, 0.9);
  -webkit-transition-delay: 0.7s;
  -moz-transition-delay: 0.7s;
  transition-delay: 0.7s;
}
*/
#check:checked ~ .main + .container .plate { opacity: 1; }

#check:checked ~ .main + .container .plate:nth-of-type(1) { top: -540%; }

#check:checked ~ .main + .container .plate:nth-of-type(2) {
  top: -390%;
  right: -390%
}

#check:checked ~ .main + .container .plate:nth-of-type(3) { right: -540%; }

#check:checked ~ .main + .container .plate:nth-of-type(4) {
  right: -390%;
  bottom: -390%;
}

#check:checked ~ .main + .container .plate:nth-of-type(5) { bottom: -540%; }

#check:checked ~ .main + .container .plate:nth-of-type(6) {
  bottom: -390%;
  left: -390%;
}

#check:checked ~ .main + .container .plate:nth-of-type(7) { left: -540%; }

#check:checked ~ .main + .container .plate:nth-of-type(8) {
  top: -390%;
  left: -390%;
}



    </style>
</head>
<body onload="initialize()">
	<!-- Open the output in a new blank tab (Click the arrow next to "Show Output" button) and resize the window to understand how the Bootstrap responsive grid system works. -->
    <div class="container-fluid">
       


        <header class="page-header">
        <div class="row">
            <div class="col-md-12"><h2>Get up 'n' Go</h2></div>
        </div>
       </header>



 	
    <div ng-app="myApp" ng-controller="customersCtrl">
       <table class="table" class="table-responsive">  
       		<tr>
        		<div class="row">
          			<div class="col-md-6">
            
        				<h3><input id="autocomplete" type="text" class="form-control" placeholder="Enter Your Addres" name="place"/></h3>
        			</div>
          			<div class="col-md-6"><h3><input id="radius" type="search" class="form-control" placeholder="Enter Circle Range in metres" name="radius"/><h3>
          			</div>
        		</div>
       		</tr>
       	</table>
       	
       		<input id="check" type="checkbox">
          	<label class="main" for="check">
            		<div class="title">
             			<i >Menu</i>
            		</div>
          	</label>
			<div class="container">

  					<a class="plate" id="atm" ng-click="call('atm');" data-toggle="modal" data-target="#myModal"><p>ATM</p></a>
  					<a class="plate" id="hospital" ng-click="call('hospital');" data-toggle="modal" data-target="#myModal"><p>Hospital</p></a>
  					<a class="plate" href="#"></a>
  					<a class="plate" href="h#"></a>
  					<a class="plate" href="#"></a>
  					<a class="plate" href="#" target="_top"></a>
  					<a class="plate" href="#" target="_top"></a>
  					<a class="plate" href="#"></a>
			</div>  

		
			
		<%-- <jsp:include page="WEB-INF/jsp/result.jsp"></jsp:include> --%>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      	<!-- <div class="scrollable"> -->
          <h4>{{msg[0]}}</h4>
			<div class="jumbotron" ng-repeat="x in Address">
       			 		
    					<h3>{{ x.name}}</h3>
							<br>
						{{x.vicinity}}<br>
						{{Distance[$index].distance.value/1000}} km
  				
       		</div>
       		
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
						
       	<!-- </div> -->
      		<!--  
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
    	 -->
    
   
    <footer class="page-footer">
            <div class="row">
                  <div class="col-md-12"><p>Copyright &copy; 2015 Marlabs Inc. All Rights Reserved</p></div>   
        	</div>
    </footer>
    </div>
 </div>
         
<!-- </div> -->
</body>
</html>                                  		