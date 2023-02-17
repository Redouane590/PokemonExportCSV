require "httparty"
# require 'pry'
class Pokemon < ApplicationRecord
  include HTTParty
  include PgSearch::Model
  pg_search_scope :search,
                  against: [ :name, :pokemon_type ],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }

  def self.fetch_data
    response = HTTParty.get('https://mon-api-pokemon.vercel.app/api/v1/gen/1')
    response.parsed_response.each do |pokemon_data|
      pokemon = Pokemon.new
      pokemon.pokedex_id = pokemon_data['pokedexId'].to_i
      pokemon.name = pokemon_data['name']['fr']
      pokemon.regular_sprite = pokemon_data['sprites']['regular']
      pokemon.shiny_sprite = pokemon_data['sprites']['shiny']
      pokemon.pokemon_type = pokemon_data['types']&.map { |type| type["name"] }&.join(", ")
      next_evolutions = pokemon_data['evolution'].nil? ? [] : pokemon_data['evolution']['next']&.map { |e| e['pokedexId'] }
      pokemon.pokedex_ids = next_evolutions.to_a.join(",")
      pokemon.save
    end
  end
end
