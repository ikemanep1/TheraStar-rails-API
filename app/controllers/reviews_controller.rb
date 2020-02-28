class ReviewsController < ApplicationController

  def index
    if
      name = params[:name]
      @reviews = Review.search(name)
      json_response(@reviews)
    elsif
      subject = params[:subject]
      @reviews = Review.subject_search(subject)
      json_response(@reviews)
    elsif
      rating = params[:rating]
      @reviews = Review.rating_search(rating)
      json_response(@reviews)
    else
      content = params[:content]
      @reviews = Review.content_search(content)
      json_response(@reviews)
    end
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def review_params
    params.permit(:name, :subject, :rating, :content)
  end
end
