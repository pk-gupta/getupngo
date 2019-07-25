 
       		
       		
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body"> 
          <h4>{{msg[0]}}</h4>
			<div class="jumbotron" ng-repeat="x in Address">
       			 		
    					<h3>{{ x.name}}</h3>
							<br>
						{{x.vicinity}}<br>
						Rating : {{x.ratings}}<br>
						{{Distance[$index].distance.value/1000}} km
  				
       		</div>
       		
       </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>                       		