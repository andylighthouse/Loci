require 'elasticsearch/model'

class User < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'messager_id'
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'messagee_id'
  has_many :written_reviews, :class_name => 'Review', :foreign_key => 'reviewer_id'
  has_many :received_reviews, :class_name => 'Review', :foreign_key => 'reviewee_id'
  has_many :user_skills
  has_many :skills, :through => :user_skills

  has_secure_password
  geocoded_by :address
  after_validation :geocode

#-----------OmniAuth Facebook Login---------------#
  def self.sign_in_from_omniauth(auth)
      find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
      user = User.create(
          provider: auth['provider'],
          uid: auth['uid'],
          name: auth['info']['name'],
          first_name: auth['info']['first_name'],
          last_name: auth['info']['last_name'],
          email: auth['info']['email'],
          password: "12345678"
          )
  end
#--Hardcoded for pasword due to bcrypt, have to fix later--#
#-----------OmniAuth Facebook Login---------------#

  def full_name
    "#{first_name} #{last_name}"
  end

  def as_indexed_json(options={})

    # { 
    #   id: id,
    #   location: {
    #     lat: latitude,
    #     lng: longitude
    #   },
    #   skills: skills.map { | s| s.name }
    # }
    as_json(
      only: [:id, :first_name, :full_name, :email, :number, :latitude, :longitude],
      include: [:skills],
      methods: [:full_name]
    )
  end

  # def text
  #   @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
  #   message = @client.account.messages.create(:body => "Yo",
  #       :to => "+17789900113",     # Replace with your phone number
  #       :from => '+16042276756')
  # end

end
