class LogsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @logs = Log.all.includes(
      [:user, :trainings]).order('created_at DESC')
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
    @log = Log.find(params[:id])
  end

  def edit
    @log = Log.find(params[:id])
  end  

  def update
    @log = Log.find(params[:id])
    if @log.update(log_params)
      redirect_to action: :show
    else
      render :edit
    end     
  end  
  
  def destroy
    @log = Log.find(params[:id])
    if current_user.id == @log.user_id && @log.destroy
      redirect_to root_path
    end  
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
        :_destroy]).merge(user_id: current_user.id)
  end
end
