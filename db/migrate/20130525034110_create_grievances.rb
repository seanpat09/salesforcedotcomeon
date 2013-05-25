class CreateGrievances < ActiveRecord::Migration
  def change
    create_table :grievances do |t|
      t.text :content
      t.integer :ups
      t.integer :downs

      t.timestamps
    end
  end
end
