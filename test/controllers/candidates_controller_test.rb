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

    politician = Candidate.create(name: "#{Faker::Name.name}", hometown: "Dallas,TX" , district: 1, party: "GOP" )
    politician = Candidate.create(name: "#{Faker::Name.name}", hometown: "Seattle" , district: 1, party: "GOP")
    variable = get :show
    assert_response :success 
    assert_equal 1, variable
  end


end
