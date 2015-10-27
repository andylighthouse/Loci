class AddColumnChat < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.references :chat
    end
  end
end
