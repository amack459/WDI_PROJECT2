class CreateUsersCarsTable < ActiveRecord::Migration
  def change
    create_join_table :users, :cars
  end
end
