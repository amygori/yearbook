//VIEW: login


//VIEW: single user profile
var UserView = Backbone.View.extend({
	
	template: _.template($'.profile-template'),
 
  	initialize: function () {
 		$('.user-container').html(this.el);
 		console.log(this);
    	this.render();
  	},
 
  	render: function () {
    	this.$el.html(this.template(this.model.attributes)) //compile the template
    	console.log('user profile render complete');
  	}
});

//VIEW: list of all users
var DirectoryView = Backbone.View.extend({
	
	template: _.template($'.directory-template'),

	initialize: function (){
		$('.directory-container').html(this.el);
		this.render();
	},

	render: function(){
		_.each(user) function(){
			this.$el.html(this.template({directory: this.collection})) //compile the template
		}

    	console.log('directory render complete');
	}
});