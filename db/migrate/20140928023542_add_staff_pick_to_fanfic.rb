class AddStaffPickToFanfic < ActiveRecord::Migration
  def change
    add_column :fanfics, :staff_pick, :boolean
  end
end
