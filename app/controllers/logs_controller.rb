class LogsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_log, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @logs = Log.all.includes(
      [:user, :trainings]
    ).page(params[:page]).per(12).order('created_at DESC')
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    if @log.valid?
      @log.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @log.comments.includes(:user).order('created_at DESC')
    @likes_count = Like.where(log_id: @log.id).count
  end

  def edit
  end

  def update
    if @log.update(log_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if current_user.id == @log.user_id && @log.destroy
  end

  private

  def log_params
    params.require(:log).permit(
      :title,
      :day_id,
      trainings_attributes: [
        :id,
        :training,
        :weight_kg,
        :weight_lb,
        :rep,
        :set_number,
        :_destroy
      ]
    ).merge(user_id: current_user.id)
  end

  def find_log
    @log = Log.find(params[:id])
  end

  def move_to_index
    log = Log.find(params[:id])
    redirect_to action: :index unless user_signed_in? && current_user.id == log.user_id
  end
end
