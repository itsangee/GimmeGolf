class ReviewsController < ApplicationController

  def new
    @review = Review.new(review_params)
  end

  def create
    @course = Course.find(params[:course_id])
    @review = Review.new(review_params)
    @review.course = @course
    @review.user = current_user
    if @review.save
      redirect_to course_path(@course)
    else
      render "courses/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :ratings, :user)
  end
end
