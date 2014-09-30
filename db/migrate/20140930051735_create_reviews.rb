class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :fanfic, index: true
      t.references :user, index: true
      t.string :headline
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
