class AddWatchedBoolToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :watched, :boolean
  end
end
