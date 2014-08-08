class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :enrollments
  has_many :courses, through: :enrollments

  has_many :user_requirements
  has_many :skills, through: :user_requirements

  has_many :user_tracks
  has_many :tracks, through: :user_tracks
end
