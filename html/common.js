function resizeImage( url, width, height )
{
	var prefix = "http://sized.castroller.com/" + width + "/" + height + "/";
	return url.replace("http://", prefix ); 
}
alert("common");

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
function dump(object, pad){
    var indent = '\t'
    if (!pad) pad = ''
    var out = ''
    if (object.constructor == Array){
        out += '[\n'
        for (var i=0; i<object.length; i++){
            out += pad + indent + dump(object[i], pad + indent) + '\n'
        }
        out += pad + ']'
    }else if (object.constructor == Object){
        out += '{\n'
        for (var i in object){
            out += pad + indent + i + ': ' + dump(object[i], pad + indent) + '\n'
        }
        out += pad + '}'
    }else{
        out += object
    }
    return out
}
