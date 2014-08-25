View.AccountCreation = Backbone.View.extend({
  initialize: (options)->
    new View.AccountCreationModal()

  el: "#account-creation"

  events:
    "click .add-account-btn" : "addAccount"

  addAccount: (event)->
    @$(".modal").modal("show")

})
