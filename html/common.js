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
