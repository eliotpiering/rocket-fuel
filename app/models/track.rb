class Track < ActiveRecord::Base

  has_many :user_tracks
  has_many :users, through: :user_tracks

  has_many :course_tracks
  has_many :courses, through: :course_tracks

  has_many :track_requirements
  has_many :skills, through: :track_requirements
end
