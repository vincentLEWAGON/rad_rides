class ReviewsController < ApplicationController
  def my_reviews
    @my_reviews = Review.all
  end
end
