class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notification_channel"
  end

  def unsubscribed	
    # Any cleanup needed when channel is unsubscribed
  end
end
