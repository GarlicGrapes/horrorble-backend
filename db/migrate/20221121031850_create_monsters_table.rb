class CreateMonstersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :weight
    end
  end
end
