var AppRouter = Backbone.Router.extend({

  routes: {
    'home'          : '', //login screen
    'users/:id'      : 'showUser', //show one user's information
    'users'     : 'showAll' //show all users
  },

  initialize: function () {
    //this.fetchPromise = collection.fetch();
  },

  showUser: function (id) {
    $(document).ready(function () {
      new PersonView({
        model: new Person({id: id})
      });
    });
  },

  showAll: function () {
    $(document).ready(function () {
      new DirectoryView({
        collection: new Directory()
      });
    });
  }
});

//instantiate the Router
var router = new AppRouter();

Backbone.history.start()
