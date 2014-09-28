class CreateFanficCrossovers < ActiveRecord::Migration
  def change
    create_table :fanfic_crossovers do |t|
      t.references :fanfic, index: true
      t.references :crossover, index: true

      t.timestamps
    end
  end
end
