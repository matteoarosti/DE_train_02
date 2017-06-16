class ActiveRecord::Base
  
  after_create :send_broadcast_message_create
  after_save :send_broadcast_message_save
  after_destroy :send_broadcast_message_delete

  def send_broadcast_message_create
    begin
      name = self.respond_to?('name') ? self.name : self.id
      ActionCable.server.broadcast 'web_notification_channel', class_name: self.class.name, op: 'Create', message: name
    rescue
      logger.info 'error on broadcast create'
    end
  end
  
  def send_broadcast_message_save
    begin
      name = self.respond_to?('name') ? self.name : self.id
      ActionCable.server.broadcast 'web_notification_channel', class_name: self.class.name, op: 'Save', message: name
    rescue
      logger.info 'error on broadcast save'
    end
  end
    
  def send_broadcast_message_delete
    begin
      name = self.respond_to?('name') ? self.name : self.id
      ActionCable.server.broadcast 'web_notification_channel', class_name: self.class.name, op: 'Delete', message: name
    rescue
      logger.info 'error on broadcast delete'
    end
  end
    
end