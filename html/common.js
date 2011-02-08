function resizeImage( url, width, height )
{
	var prefix = "http://sized.castroller.com/" + width + "/" + height + "/";
	return url.replace("http://", prefix ); 
}

function resizeImages( data, width, height )
{
	
	
	
	$(data).each(function(){
			
			var newImage = resizeImage( this.LinkUrl, width, height ); 
			
			
			this.LinkUrl = newImage;
			
			
	});
	
	return data;
}

function querySt(ji) {
    hu = window.location.search.substring(1);
   gy = hu.split( "&" );
    for (i = 0; i < gy.length; i++) {
        ft = gy[i].split( "=" );
        if (ft[0] == ji) {
             return ft[1];
       }
    }
}


function isTouchDevice(){
	try{
		document.createEvent("TouchEvent");
		return true;
	}catch(e){
		return false;
	}
}
function touchScroll(id){
	if(isTouchDevice){ //if touch events exist...
		var el=document.getElementById(id);
		var scrollStartPos=0;
		
		document.getElementById(id).addEventListener("touchstart", function(event) {
													 scrollStartPos=this.scrollLeft+event.touches[0].pageX;
													 event.preventDefault();
													 },false);
		
		document.getElementById(id).addEventListener("touchmove", function(event) {
													 this.scrollLeft=scrollStartPos-event.touches[0].pageX;
													 event.preventDefault();
													 },false);
	}
}
