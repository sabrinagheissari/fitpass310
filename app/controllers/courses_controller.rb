class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
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

  def set_course
    @course = Course.find(params[:id])
  end

  def set_params
    params.require(:course).permit(:studio_id, :name, :time, :duration, :price, :capacity, :difficulty, :teacher_name)
  end
end
