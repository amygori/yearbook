//VIEW: login


//VIEW: single person profile
var PersonView = Backbone.View.extend({

	//template: _.template($('.profile-template').html() || ''),
 
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

	initialize: function () {
		this.listenTo(this.collection, 'sync', this.render);
     	this.collection.fetch();
     	console.log(this.collection);
	},

	getUsers: function () {
		var users = [];
		_.each(this.collection.models, function(model) {
			users.push(model.attributes);
		});
		return users;
	},

	render: function() {
		var template = _.template($('.directory-template').html().trim());
		var output = '';
		_.each(this.getUsers(), function (user) {
			//console.log(user);
			output += template({user: user});
		});
		$('.directory-container').html(output);
	}
});


//VIEW: create a user
/*var NewUserView = Backbone.View.extend({

	initialize: function () {
		this.listenTo(this.collection, 'add', this.render);
		this.collection.fetch();

	},

	render: function () {
		var self = this;
			self.$el.html('');
			return this;
            $(this.el).hide();
        	//$(this.el).show();
	}


})*/

//VIEW: login
/*var LoginView = Backbone.View.extend({

	initialize: function () {
		window.prompt = null;
	},

	events: "click .button": "login",

	render: function () {
		var self = this;

	}

	login: function () {
		if(($'.input-box').length > 0) {
			var formValues = {
            email: $('#email').val(),
            password: $('#password').val()
        };

        $.ajax({
            url:url,
            type:'POST',
            dataType:'json',
            data: formValues,
            success:function (data) {
                console.log(["Login request details: ", data]);
              	return.this;
            }
        });
    }
	}
});*/

