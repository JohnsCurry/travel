//document.querySelector('html').onclick = function() {
//alert('Ouch!');
//} 

$(document).ready(function() {

    $('.location').click(function(event){
	
	var isLocation = $(event.target).is('.location');
	if(isLocation){
	    $('.todo', this).toggle("slow");
	}
    });

});
