var LSDController = function(options) {
	var self = this;
	
	this.options = {
		entity : "",

	};
	this.options = options;

	this.openFeedForm = function(entity_type, entity_id){
		get("feed",entity_type,{id:entity_id},function(d){
			openForm("feed",d);
		});
	};
	
	this.setFeedItem = function(formDOM){
		send(formDOM,function(d){
			alert("saved");
		});
	};
	
	////////////////////////////////////////////////////////////
	
	var get = function(verb,entity_type,data,successFunction) {
		$.ajax({
			url : "/"+verb+"/"+entity_type,
			data : data
			//dataType : "JSON" // you want a difference between normal and ajax-calls, and json is standard
		}).success(function(json) {
			successFunction(json);
		});
	};

	var send = function(formDOM,successFunction, dataType) {
		var valuesToSubmit = formDOM.serialize();
		$.ajax({
			url : formDOM.attr('action'), //sumbits it to the given url of the form
			data : valuesToSubmit,
			dataType : dataType || "JSON" // you want a difference between normal and ajax-calls, and json is standard
		}).success(function(json) {
			successFunction(json);
		});
	};

	
};
