class ReviewsController < ApplicationController
  def my_reviews
    @my_reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      flash.notice = "Commentaire envoyé"
      redirect_to @reviews
    end
  end
end
