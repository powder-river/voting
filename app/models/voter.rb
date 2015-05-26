class Voter < ActiveRecord::Base
  has_many :ballots
  #has_one :ballots
  validates :name, presence: true
  validates :party, presence: true
end
