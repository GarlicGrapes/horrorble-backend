class AddImgUrlToMovie < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :movies, :poster_url, :text
    end
  end
end
