class CreateCrossovers < ActiveRecord::Migration
  def change
    create_table :crossovers do |t|
      t.string :name

      t.timestamps
    end
  end
end
