class PlantsController < ApplicationController
  def index
    # response = HTTP.get("https://perenual.com/api/species-list?page=1&key=#{ENV["PLANT_API_KEY"]}")
    response = HTTP.get("https://perenual.com/api/species-list?key=sk-8xO964190bf47d56b271&indoor=1")
    plants = response.parse
    render json: plants
  end

  def show
    response = HTTP.get("https://perenual.com/api/species/details/[ID]?key=sk-8xO964190bf47d56b271")
  end
end
