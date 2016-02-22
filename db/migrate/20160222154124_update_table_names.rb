class UpdateTableNames < ActiveRecord::Migration
  def change
    rename_table :user, :users
    rename_table :car, :cars
    rename_table :dealer, :dealers
  end
end
