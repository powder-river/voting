class VotersController < ApplicationController

  #save this for later
#  http_basic_authenticate_with name: "admin", password: "secret"
 before_action :restrict_access

  def show
    render json: Voter.find_by_id(params[:id])
  end


  def create
    voter = Voter.new(name: params[:name], party: params[:party])
    if voter.save
      render json: voter
    else
      render json: voter.errors
    end
  end


  def update
    voter = Voter.find_by_id
    voter.name = "Dave"
    voter.save
  end


  private def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end




end
