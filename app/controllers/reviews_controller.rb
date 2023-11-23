class ReviewsController < ApplicationController
  def my_reviews
    @my_reviews = Review.all
  end

  def new
    @review = Review.new
    @booking = Booking.find(params["booking_id"])
  end
  
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = Booking.find_by(id: params[:booking_id])
    if @review.save!
      flash.notice = "Commentaire envoyé"
      redirect_to dashboard_my_bookings_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :id, :booking_id)
  end
end
