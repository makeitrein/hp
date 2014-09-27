class AddMpaaToFanfic < ActiveRecord::Migration
  def change
    add_column :fanfics, :mpaa, :integer, default: 0
  end
end
