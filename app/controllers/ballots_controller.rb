class BallotsController < ApplicationController
  before_action :restrict_access


  def index
    render json: Ballot.all
  end


  def create
    voter = Ballot.new(voter_id: params[:voter_id], candidate_id: params[:candidate_id])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end


  private def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end





end
