class Message < ActiveRecord::Base
  belongs_to :messager, :class_name => 'User'
  belongs_to :messagee, :class_name => 'User'
  belongs_to :chat
end
