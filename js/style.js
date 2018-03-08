//Menus
$(document).ready(function () {
    $(".dropdown-button").dropdown();
    
    $(".button-collapse").sideNav();
}); 

//Git Link Hover
$(document).ready(function () {
    var gitImg = $("img#git");
    	gitImg.mouseenter( function(e){
    		gitImg.attr("src","images/gitcat_hover.png");
    		e.stopPropagation();
    	})
    	.mouseleave( function(e){
    		gitImg.attr("src","images/gitcat.png");
    		e.stopPropagation();
    	});
});



