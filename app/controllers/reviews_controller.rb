class ReviewsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user

    if @review.save
        redirect_to bookings_path
    else
      render :new
    end

  end

  def index
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end

end
