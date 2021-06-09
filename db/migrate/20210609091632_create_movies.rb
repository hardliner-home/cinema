class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :imdb_id, null: false
      t.date :show_start_at
      t.date :show_end_at
      t.monetize :price
      t.timestamps
    end
  end
end
