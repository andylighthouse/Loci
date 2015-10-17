class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string 
    add_column :users, :password_digest, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    remove_column :users, :lat
    remove_column :users, :lng
  end
end
