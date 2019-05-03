$(document).ready(function(){
	console.log('ready to setup AJAX calls');

	$.ajax({
		type: 'GET',
		url: "/apiv1/",
		accepts: {
	    	mycustomtype: 'application/json'
	  	},
	  	dataType: 'jsonp'
	}).done(function(resp) {
		resp = JSON.stringify(resp);
    	$('#render').html(resp);
	  })
	  .fail(function( jqXHR, textStatus, errorThrown )  {
	   $('#render').html("An error occured:" + textStatus)
	  })

});
