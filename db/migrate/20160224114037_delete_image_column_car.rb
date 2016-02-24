class DeleteImageColumnCar < ActiveRecord::Migration
  def change
    remove_column :cars, :image
  end
end
