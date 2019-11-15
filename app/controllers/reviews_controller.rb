class ReviewsController < ApplicationController

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end

  def create
    @course = Course.find(params[:course_id])
    @review = Review.new(set_params)
    @review.course = @course
    if @review.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:review).permit(:title, :content, :rating, :user_id, :course_id)
  end
end
