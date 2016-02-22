class CreateCarTable < ActiveRecord::Migration
  def change
    create_table :car do |t|
      t.string :image
      t.string :make
      t.string :model
      t.string :year
      t.string :price
      t.integer :dealer_id

      t.timestamps

  end
end
