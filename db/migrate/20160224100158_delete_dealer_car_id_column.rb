class DeleteDealerCarIdColumn < ActiveRecord::Migration
  def change
    remove_column :dealers, :car_id 
  end
end
