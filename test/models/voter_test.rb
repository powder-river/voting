require 'test_helper'


class VoterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "voter_exists?" do
    brad = Voter.create(name: "Brad", party: "Bathe")
    amy = Voter.new()
    assert brad
    refute amy.save
  end

  test "vote for candidate" do
    politician = Candidate.create(name: "Bush III", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    brad = Voter.create(name: "Brad", party: "Bathe")
    brad_vote = Ballot.create(voter_id: brad.id, candidate_id: politician.id)

    assert_equal 1, politician.ballots.count
    assert_equal 1, brad.ballots.count
  end
end
