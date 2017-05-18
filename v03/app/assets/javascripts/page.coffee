# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.cable.subscriptions.create "WebNotificationsChannel",
  # Called when subscription is ready for use on the server
  connected: ->
    $(document).alert("Pronto")

  received: (data) ->
    $(document).alert("Ciao")  
      