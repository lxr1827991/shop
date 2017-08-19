
function getRequest(url,param,key){
	var paramStr ='';
	if(param instanceof Array){
		for ( var i = 0; i < param.length; i++) {
			paramStr+="&"+key+"="+encodeURIComponent(param[i]);
		}
	}else if(param instanceof Object){
		for ( var i in param) {
			paramStr+="&"+i+"="+encodeURIComponent(param[i]);
			
		}
		
	}
		
	
	window.location.href = url+"?"+paramStr.substring(1, paramStr.length);
	
	
	
}

		
		function variableStr(str,n) {
			var st = "";
			for ( var i = 0; i < n; i++) {
				st+=str;
			}
			return st;
		} 




function getDocumentUrl(){
    return location.protocol+'//'+location.host+location.pathname;
}


var App = {}

App.getSelected = function(){
	var ids = [];
	$("#content>tr .select").each(function(index,element){
	if(!$(element).attr('checked'))return;
		var id = $(element).attr("data-id");
		if(!isNaN(id)){
		ids.push(id);
		}
	
	
	});
	
	return ids;

}

App.del = function(uri,ids) {
	if(!ids||ids.length<1){alert('未选中');
	return;}
	if (confirm("确定删除")==true){ 
		  getRequest(uri,ids,"id");
		 }else{ 
		  return false; 
		 } 
}

