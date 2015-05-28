class Ballot < ActiveRecord::Base
  belongs_to :voters
  belongs_to :candidates

  validates :voter_id, presence: true, uniqueness: true
  validates :candidate_id, presence: true
  
end
