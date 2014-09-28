class CreateFanficCharacters < ActiveRecord::Migration
  def change
    create_table :fanfic_characters do |t|
      t.references :fanfic, index: true
      t.references :character, index: true

      t.timestamps
    end
  end
end
