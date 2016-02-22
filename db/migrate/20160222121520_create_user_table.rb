class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :email, limit: 50
      t.string :user_name, limit: 50
      t.string :password

      t.timestamp

  end
end
