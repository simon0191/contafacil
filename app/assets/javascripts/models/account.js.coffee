Model.Account = Backbone.Model.extend({
  urlRoot: '/accounts',

  initialize: (options) ->{

  },

  defaults: {

  }
});

Collections.Accounts = Backbone.Collection.extend({
  model: Model.Account
});