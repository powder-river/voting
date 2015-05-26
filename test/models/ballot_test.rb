require 'test_helper'

class BallotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "ballot created" do
    politician = Candidate.create(name: "Bush III", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    brad = Voter.create(name: "Brad", party: "Bathe")
    brad_vote = Ballot.create(voter_id: brad.id, candidate_id: politician.id)
    amy_vote = Ballot.new()

    assert brad_vote
    refute amy_vote.save
  end
end
