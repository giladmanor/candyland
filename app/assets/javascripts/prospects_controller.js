var ProspectsController = function(options) {
	var self = this;
	
	this.options = {
		entity : "",

	};
	this.options = options;

	this.openFeedForm = function(entity_type, entity_id){
		console.log("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", entity_id);
		get("feed",entity_type,{id:entity_id},function(d){
			openForm(entity_id,d);
		});
	};
	
	this.setFeedItem = function(formDOM,prospect_id){
		console.log("---------------------------------------------------------");
		console.log("prospect: ", prospect_id);
		send(formDOM,function(d){
			console.log("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
			console.log("prospect: ", prospect_id);
			self.openFeedForm("feed",prospect_id);
		});
	};
	
	////////////////////////////////////////////////////////////
	
	var get = function(verb,entity_type,data,successFunction) {
		$.ajax({
			url : "/prospects/"+verb,
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
			method:"post",
			data : valuesToSubmit,
			dataType : dataType || "JSON" // you want a difference between normal and ajax-calls, and json is standard
		}).success(function(json) {
			successFunction(json);
		});
	};

	
};
