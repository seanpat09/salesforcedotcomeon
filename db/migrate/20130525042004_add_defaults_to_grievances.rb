class AddDefaultsToGrievances < ActiveRecord::Migration
  def change
    change_column :grievances, :ups, :integer, :null => false, :default => 0
    change_column :grievances, :downs, :integer, :null => false, :default => 0
  end
end
