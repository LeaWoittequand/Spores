class ReviewsController < ApplicationController
  # before_action :set_review, only: [:new, :create]

  def create
    set_review
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.user = current_user
    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def new
    set_review
    @review = Review.new
  end


  private

  def review_params
    params.require(:review).permit(:description, :picture, :user, :flat)
  end

  def set_review
    @flat = Flat.find(params[:flat_id])
  end

end
