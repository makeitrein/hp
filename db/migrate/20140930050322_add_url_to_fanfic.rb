class AddUrlToFanfic < ActiveRecord::Migration
  def change
    add_column :fanfics, :url, :string
  end
end
