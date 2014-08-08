class Skill < ActiveRecord::Base

  has_many :user_requirements
  has_many :users, through: :user_requirements

  has_many :course_requirements
  has_many :courses, through: :course_requirements

  has_many :track_requirements
  has_many :tracks, through: :track_requirements

end
