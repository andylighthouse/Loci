class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :reviewer_id
      t.integer :reviewee_id
      t.timestamps null: false
    end
  end
end
