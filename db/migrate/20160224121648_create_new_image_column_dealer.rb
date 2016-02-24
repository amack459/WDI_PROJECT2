class CreateNewImageColumnDealer < ActiveRecord::Migration
  def change
    add_column :dealers, :image, :text
  end
end
