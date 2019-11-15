class ReviewsController < ApplicationController

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end

  def create
    @course = Course.find(params[:course_id])
    @studio = @course.studio
    @review = Review.new(set_params)
    @review.course = @course
    @review.user = current_user
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
