class ChangeEntrySampleTable < ActiveRecord::Migration
  def up
    remove_column :entrysamples, :diver_name
    add_column :entrysamples, :diver_name_id, :string
    add_column :entrysamples, :buddy_name_id, :string
    add_column :entrysamples, :habitat_type_id, :integer
    add_column :entrysamples, :cylinder_radius, :float
    add_column :entrysamples, :current, :string
  end

  def down
    remove_column :entrysamples, :current
    remove_column :entrysamples, :cylinder_radius
    remove_column :entrysamples, :habitat_type_id
    remove_column :entrysamples, :buddy_name_id
    remove_column :entrysamples, :diver_name_id
    add_column :entrysamples, :diver_name
  end
end
