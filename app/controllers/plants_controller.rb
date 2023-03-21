class PlantsController < ApplicationController
  def index
    response = HTTP.get("https://perenual.com/api/species-list?page=1&key=#{ENV["PLANT_API_KEY"]}")
    articles = response.parse
    render json: articles
  end
end
