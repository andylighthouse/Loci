class Skill < ActiveRecord::Base
  has_many :reviews
  has_many :user_skills
  has_many :users, :through => :user_skills
end
