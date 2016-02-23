class DeleteDealerPasswordColumn < ActiveRecord::Migration
  def change
    remove_column :dealers, :password 
  end
end
