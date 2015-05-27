require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "shows selected candidate" do
    get :show
    politician = Candidate.create(name: "Bush III", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    politician = Candidate.create(name: "#{Faker::Name.name}", hometown: "Seattle" , district: 1, party: "GOP")
    get :show
    #byebug
    assert_equal 1, selected_politician.count
  end
end
