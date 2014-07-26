//VIEW: login


//VIEW: single person profile
var PersonView = Backbone.View.extend({

	template: _.template($('.profile-template').html() || ''),
 
  	initialize: function () {
 		this.listenTo(this.model, 'sync', this.render);
     	this.model.fetch();
  	},
 
  	render: function () {
    	var template = _.template($('.profile-template').html().trim());
		var output = template({user: this.model.attributes});
		$('.directory-container').html(output);
  	}
});

//VIEW: list of all users
var DirectoryView = Backbone.View.extend({

	initialize: function (){
		this.listenTo(this.collection, 'sync', this.render);
     	this.collection.fetch();
	},

	getUsers: function () {
		var users = [];
		_.each(this.collection.models, function(model) {
			users.push(model.attributes);
		});
		return users;
	},

	render: function(){
		var template = _.template($('.directory-template').html().trim());
		var output = '';
		_.each(this.getUsers(), function (user) {
			output += template({user: user});
		});
		$('.directory-container').html(output);
	}
});
//instantiate the directory view

