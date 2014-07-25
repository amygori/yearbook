var AppRouter = Backbone.Router.extend({
 
  routes: {
    'home'          : '', //login screen
    'user/:id'      : 'showUser' //show one user's information
    'directory'     : 'showAll' //show all users
  },
 
  initialize: function () {
    this.fetchPromise = collection.fetch();
  },
 
  showUser: function () {
 
    this.fetchPromise.done(function(){
      $('.user-container').html('');
      collection.each(function(user){
        new UserView({model: user})
      })
    })
  },
 
  showAll: function (gallery) {
    this.fetchPromise.done(function () {
      $(.'directory-container').html('');
      collection.get(gallery);
      new DirectoryView({model: user});
    })
  }
});

//instantiate the Router
new AppRouter;
 
Backbone.history.start()