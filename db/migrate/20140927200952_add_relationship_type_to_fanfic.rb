class AddRelationshipTypeToFanfic < ActiveRecord::Migration
  def change
    add_column :fanfics, :relationship_type, :integer, default: 0
  end
end
