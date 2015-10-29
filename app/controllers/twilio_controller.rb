# require 'twilio-ruby'
 
# class TwilioController < ApplicationController
# #   include Webhookable
 
# #   after_filter :set_header
 
#   skip_before_action :verify_authenticity_token
 
# #   def voice
# #     response = Twilio::TwiML::Response.new do |r|
# #       r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
# #          r.Play 'http://linode.rabasa.com/cantina.mp3'
# #     end
 
# #     render_twiml response
# #   end

#     # set up a client to talk to the Twilio REST API
#     def client
#       # put your own credentials here
#       account_sid = ENV['ACCOUNT_SID']
#       auth_token = ENV['AUTH_TOKEN']
#       @client = Twilio::REST::Client.new account_sid, auth_token
#     end

#     def call
#       @client.account.calls.create({ 
#         :from => '+16042276756',   
#         :method => 'GET',  
#         :fallback_method => 'GET',  
#         :status_callback_method => 'GET',    
#         :record => 'false'
#       })
#     end
# #     @account_sid = ENV['ACCOUNT_SID']
# #     @auth_token = ENV['AUTH_TOKEN']

#     def text
#       @client.messages.create(
#           :body => "Yo",
#           :to => "+17789900113",
#           :from => '+16042276756')
#       @client = Twilio::REST::Client.new account_sid, auth_token
#     end
# #       message = @client.account.messages.create(
# #           :body => "Hi, how are you?",
# #           :to => "+17789900113",
# #           :from => '+16042276756',
# #           :media_url => "http://www.example.com/hearts.png")

# #     def outgoing_and_incoming_calls
# #       params = {'user_id' => @user.id}
# #       capability = Twilio::Util::Capability.new account_sid, auth_token
# #       # Allow incoming calls, and give the client a name.
# #       capability.allow_client_incoming 'andrew'
# #       # Allow outgoing calls to an application and pass the user id to your server.
# #       capability.allow_client_outgoing 'AP193a5480ce595dcef12345c1010a0c47', params
# #       # Generate the token string
# #       @token = capability.generate(5)
# #     end
# #   end


# #   # alternatively, you can preconfigure the client like so
# #   # Twilio.configure do |config|
# #   #   config.account_sid = account_sid
# #   #   config.auth_token = auth_token
# #   # end

# #   # and then you can create a new client without parameters
# #   # @client = Twilio::REST::Client.new(account_sid, auth_token)

# end