var AppRouter = Backbone.Router.extend({

  routes: {
    'home'          : '', //login screen  
    'users/:id'     : 'showUser', //show one user's information
    'users'         : 'showAll', //show all users 
    //'users/sign_up' : 'createUser', //
    // 'users/sign_in' : 'login'
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
  },

  /*createUser: function () {
      newUserView = new NewUserView();
  },*/

  /*login: function () {
    $(document).ready(function (){
      newloginView = new LoginView();
      });
    });
  }*/

});

//instantiate the Router
var router = new AppRouter();

Backbone.history.start()
