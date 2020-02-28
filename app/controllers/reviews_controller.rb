class ReviewsController < ApplicationController

  def index
    if
      name = params[:name]
      @reviews = Review.search(name)
      json_response(@reviews)
    elsif
      link = params[:link]
      @reviews = Review.search(link)
      json_response(@reviews)
    else
      description = params[:description]
      @reviews = Review.description_search(description)
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
    params.permit(:name, :description, :link)
  end
end
