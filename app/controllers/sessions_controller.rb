class SessionsController < ApplicationController
  # before_action :set_session, only: [:show, :edit, :update, :destroy]

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def set_params
    params.require(:session).permit(:studio_id, :name, :time, :duration, :price, :capacity, :difficulty, :teacher_name)
  end
end
