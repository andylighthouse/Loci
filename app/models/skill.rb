class Skill < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_many :reviews
  has_many :user_skills
  has_many :users, :through => :user_skills
>>>>>>> 27Ethan_skilltable
end
