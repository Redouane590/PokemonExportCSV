class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokedex_id
      t.string :name
      t.string :regular_sprite
      t.string :shiny_sprite
      t.string :pokemon_type
      t.string :pokedex_ids

      t.timestamps
    end
  end
end
