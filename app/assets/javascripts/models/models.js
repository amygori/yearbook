'use strict';

var User = Backbone.Model.extend({
	idAttribute: '',
	url: 'http://localhost:3000/users.json'
})

//instantiate the Model
var user = new User(); 