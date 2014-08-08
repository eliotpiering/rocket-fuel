class TrackRequirement < ActiveRecord::Base
  belongs_to :track
  belongs_to :skill
end
