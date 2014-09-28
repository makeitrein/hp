class AddMpaaRefToFanfic < ActiveRecord::Migration
  def change
    add_reference :fanfics, :mpaa, index: true
  end
end
