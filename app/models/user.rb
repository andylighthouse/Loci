class User < ActiveRecord::Base
  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'messager_id'
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'messagee_id'
  has_many :written_reviews, :class_name => 'Review', :foreign_key => 'reviewer_id'
  has_many :received_reviews, :class_name => 'Review', :foreign_key => 'reviewee_id'
  has_many :user_skills
  has_many :skills, :through => :user_skills

  has_secure_password
  geocoded_by :address
  after_validation :geocode

end
