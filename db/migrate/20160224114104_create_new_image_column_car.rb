class CreateNewImageColumnCar < ActiveRecord::Migration
  def change
    add_column :cars, :image, :text
  end
end
