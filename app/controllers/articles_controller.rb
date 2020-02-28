class ArticlesController < ApplicationController

  def index
    if
      name = params[:name]
      @articles = Article.search(name)
      json_response(@articles)
    elsif
      link = params[:link]
      @articles = Article.search(link)
      json_response(@articles)
    else
      description = params[:description]
      @articles = Article.description_search(description)
      json_response(@articles)
    end
  end

  def show
    @article = Article.find(params[:id])
    json_response(@article)
  end

  def create
    @article = Article.create!(article_params)
    json_response(@article)
  end

  def update
    @article = Article.find(params[:id])
    if @article.update!(article_params)
      render status: 200, json: {
        message: "This article has been updated successfully."
      }
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def article_params
    params.permit(:name, :description, :link)
  end
end
