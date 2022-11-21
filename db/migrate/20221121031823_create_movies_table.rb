class CreateMoviesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
    end
  end
end
