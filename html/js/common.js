function resizeImages( data, width, height )
{
	
	var prefix = "http://sized.castroller.com/" + width + "/" + height + "/";
	
	
	
	$(data).each(function(){
			
			var newImage = this.LinkUrl.replace("http://", prefix ); 
			
			
			this.LinkUrl = newImage;
			
			
	});
	
	return data;
}


