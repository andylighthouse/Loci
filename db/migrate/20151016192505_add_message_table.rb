class AddMessageTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :messager_id
      t.integer :messagee_id
      t.timestamps null: false
    end
  end
end
