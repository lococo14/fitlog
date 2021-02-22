class LikesController < ApplicationController
  def create
    @log = Log.find(params[:log_id])
    @log.iine(current_user)
  end

  def destroy
    @log = Like.find(params[:id]).log
    @log.uniine(current_user)
  end
end
