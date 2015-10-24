class ChatsController < ApplicationController

  # before_action :check_if_allowed_in_room
  def message
  end

  def send_message
    message = params[:message]
    room = params[:room]


    # user id 
    pusher = Pusher.trigger(room, 'message', {:message => message})
    respond_to do |format|
      format.json { render :json => pusher }
    end
    # binding.pry

  end
end
