class AddSkillTable < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.text :description
      t.timestamps null: false
    end
  end
end
