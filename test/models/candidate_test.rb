require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "candidate exists" do
    politician = Candidate.create(name: "Bush III", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    other_politician = Candidate.new()
    assert politician
    refute other_politician.save
  end

  test "candidate can be voted for" do
    politician = Candidate.create(name: "Bush III", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    brad = Voter.create(name: "Brad", party: "Bathe")
    brad_vote = Ballot.create(voter_id: brad.id, candidate_id: politician.id)

    assert_equal 1, politician.ballots.count
  end
end
