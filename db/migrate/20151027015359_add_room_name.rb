class AddRoomName < ActiveRecord::Migration
  def change
    add_column :messages, :room, :string
  end
end
