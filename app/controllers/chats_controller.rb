class ChatsController < ApplicationController

  # before_action :check_if_allowed_in_room
  def message
    # binding.pry
    # room_id = params[:id]
    # begin
    #   pusher = Pusher.trigger("#{room_id}", 'message', {:some => 'data'})
    #   binding.pry
    # rescue Pusher::Error => e
    # # (Pusher::AuthenticationError, Pusher::HTTPError, or Pusher::Error)
    # end
  end

  def send_message
    message = params[:message]
    room_id = params[:id]
    pusher = Pusher.trigger('1', 'message', {:message => message})
    respond_to do |format|
      format.json { render :json => pusher }
    end
    # binding.pry

  end
end
