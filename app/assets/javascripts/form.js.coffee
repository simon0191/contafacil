#= require jquery
$("#account").on "change", (ev) ->
  val = $(this).val()
  if val == "new"
    console.log "simon"
  #end
#end
