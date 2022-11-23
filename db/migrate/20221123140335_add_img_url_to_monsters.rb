class AddImgUrlToMonsters < ActiveRecord::Migration[6.1]
  def change
    add_column :monsters, :img_url, :string
  end
end
