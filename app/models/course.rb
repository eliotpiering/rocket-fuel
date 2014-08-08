class Course < ActiveRecord::Base

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :course_requirements
  has_many :skills, through: :course_requirements

  has_many :course_tracks
  has_many :tracks, through: :course_tracks
end
