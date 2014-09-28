class AddRelationshipTypeRefToFanfic < ActiveRecord::Migration
  def change
    add_reference :fanfics, :relationship_type, index: true
  end
end
