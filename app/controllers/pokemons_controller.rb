class PokemonsController < ApplicationController
  def index
    # @pokemons = Pokemon.all
    if params[:query].present?
      @pokemons = Pokemon.search(params[:query])
    else
      @pokemons = Pokemon.all
    end
  end

  def export_csv
    # on recupere les ids des pokemon séléctionné
    selected_pokemon_ids = params[:pokemon_ids]

    # Si aucun Pokemon n'a été sélectionné, on affiche une alerte et on redirige vers l'index
    # et selected_pokemon_ids sera nil donc on utilise .blank? au lieu de .empty
    if selected_pokemon_ids.blank?
      flash[:alert] = "Aucun Pokemon sélectionné, veuillez en sélectionner s'il vous plait"
      redirect_to pokemons_path
      return
    end

    # on récupere les pokemon correspondant aux ids des pokemon selectionnés
    selected_pokemons = Pokemon.where(id: selected_pokemon_ids)

    # ici on crée notre fichier csv, tout d'abord on donne comme indication que chaque colonne sera séparé par un point virgule
    # on met en place les headers
    # ensuite pour chaque pokemon qu'on aura récupéré on récupère les infos dont on a besoin dans la bonne colonne
    csv_data = CSV.generate(col_sep: ';') do |csv|
      csv << ["pokedexId", "nom_en_français", "url_sprite_regular", "url_sprite_shiny", "type_du_pokemon", "pokedexIds"]

      selected_pokemons.each do |pokemon|
        csv << [pokemon.pokedex_id, pokemon.name, pokemon.regular_sprite, pokemon.shiny_sprite, pokemon.pokemon_type, pokemon.pokedex_ids]
      end
    end

    send_data csv_data, filename: "pokemons.csv"
    # redirect_to pokemons_path
  end

  def show
    # raise
    # ici obliger de faire une modif sur le params id car sinon ca me renvoyer pas le bon pokemon
    response = HTTParty.get("https://mon-api-pokemon.vercel.app/api/v1/pokemon/#{(params[:id].to_i) - 931}")
    @pokemon = JSON.parse(response.body)
  end
end
