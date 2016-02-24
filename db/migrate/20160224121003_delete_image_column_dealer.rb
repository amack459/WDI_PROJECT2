class DeleteImageColumnDealer < ActiveRecord::Migration
  def change
    remove_column :dealers, :image
  end
end
