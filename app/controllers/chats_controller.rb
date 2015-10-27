class ChatsController < ApplicationController

  # before_action :check_if_allowed_in_room
  def message
    unless Chat.find_by(room: params[:room])
      Chat.create(room: params[:room])
    end


    @chat_room = Chat.includes(:messages, { messages: :messager }).find_by(room: params[:room])
    # @messages = @chat_room.messages
  end

  def send_message
    message = params[:message]
    time = params[:timestamp]
    room = params[:room]

    # user id 
    pusher = Pusher.trigger(room, 'message', { message: message, from: current_user.full_name, time: time })
    chat_room = Chat.find_by(room: params[:room])
    new_message = Message.create(chat_id: chat_room.id , content: params[:message], messagee_id: params[:room].to_i, messager_id: current_user.id, room: params[:room])
    
    
    respond_to do |format|
      format.json { render :json => pusher }
    end
    # binding.pry
  end

  def get_history
    
  end

end
