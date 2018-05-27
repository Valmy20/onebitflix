class Api::V1::IndicationsController < ApplicationController
  def index
    favorites = Favorite.where(user_id: current_user.id)
    last_favorite = favorites.last
    movie = Movie.where(id: last_favorite.id)
    serie_id = movie.select("serie_id")

    if serie_id.present?
        serie_category = Serie.select("category_id").where(id: serie_id)

        @serie = Serie.where(category_id: serie_category).take
        render json: Api::V1::SerieSerializer.new(@serie, include: [:episodes], params: { user: current_user }).serialized_json
    else
        movie_category = movie.select("category_id")

        @movie = Movie.where(category_id: movie_category).take
        render json: Api::V1::MovieSerializer.new(@movie, params: { user: current_user }).serialized_json
    end
  end
end
