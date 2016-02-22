class CreateDealerTable < ActiveRecord::Migration
  def change
    create_table :dealer do |t|
      t.string :email, limit: 50
      t.string :user_name, limit: 50
      t.string :password
      t.string :dealership
      t.string :image
      t.integer :car_id
      t.timestamps
    end
  end
end
