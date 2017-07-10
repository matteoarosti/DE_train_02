class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notification_channel"
  end

  def unsubscribed	
    # Any cleanup needed when channel is unsubscribed
  end
  
  def test01(data)
    logger.info data.to_yaml 
  end
  
end
