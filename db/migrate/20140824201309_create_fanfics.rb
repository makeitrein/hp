class CreateFanfics < ActiveRecord::Migration
  def change
    create_table :fanfics do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :word_count
      t.datetime :published
      t.datetime :updated
      t.references :user
      t.integer :status

      t.timestamps
    end
  end
end
