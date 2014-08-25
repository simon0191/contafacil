View.AccountCreationModal = Backbone.View.extend({
  el: "<div/>"

  initialize: (options)->
    console.log "Hooolaaa"
    @render()

  render: ()->
    html = $("#account-creation-modal-tpl").html()
    template = _.template(html)
    @$el.html(template())
    $("body").append(@$el.html())

  events:
    "click .create-account-btn" : "createAccount"
    "submit .account-creation-form": "createAccount"

  createAccount: (event)->
    event.preventDefault();
    account =
      name : @$("#name").val()
      pucId : @$("#puc-id").val()

    $.post(
      "/accounts.json"
      {account:account}
      (data)->
        return
      "json"
    ).success((data)->
      console.log("success")
      console.log(data)
    ).fail((err)->
      console.log("Error")
      console.log(err)
    )

})
