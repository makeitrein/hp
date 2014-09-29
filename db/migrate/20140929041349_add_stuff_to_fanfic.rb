class AddStuffToFanfic < ActiveRecord::Migration
  def change
    add_column :fanfics, :crossover, :string
    add_column :fanfics, :relationship, :string
    add_column :fanfics, :mpaa, :string
  end
end
