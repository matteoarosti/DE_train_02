App.web_notifications = App.cable.subscriptions.create "WebNotificationsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('connectedddddd');

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log('disconnecteddddd');

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log('receivedddddddd')
    console.log(data);
    $('#messages').append '<h3>' + data['class_name'] + '</h3>' + data['op'] + ' ' + data['message']
