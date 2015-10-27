class AddChatTable < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :room
    end
  end
end
