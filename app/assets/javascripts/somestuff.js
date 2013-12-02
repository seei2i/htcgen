$(document).ready(function(){  
  $('.togler').on("click", function(e) {
  	$(this).children().children('p').toggleClass('hidden');
  	$(this).siblings().toggleClass('hidden');
  	$(this).toggleClass('col-md-4');
  	$(this).toggleClass('col-md-12');
  	e.stopPropagation();
  	e.preventDefault();
  });



});