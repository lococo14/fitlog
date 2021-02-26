class LikesController < ApplicationController
  before_action :log_params

  def create
    Like.create(user_id: current_user.id, log_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, log_id: params[:id]).destroy
  end

  private

  def log_params
    @log = Log.find(params[:id])
  end
end
