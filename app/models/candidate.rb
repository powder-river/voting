class Candidate < ActiveRecord::Base
  has_many :ballots
  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party, presence: true
end
