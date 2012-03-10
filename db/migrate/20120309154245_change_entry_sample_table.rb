class ChangeEntrySampleTable < ActiveRecord::Migration
  def up
    remove_column :entrysamples, :diver_name
    add_column :entrysamples, :diver_name_id, :string
    add_column :entrysamples, :buddy_name_id, :string
    add_column :entrysamples, :habitat_type_id, :integer
    add_column :entrysamples, :cylinder_radius, :float
    add_column :entrysamples, :current, :string
    add_column :entrysamples, :max_depth, :float
    add_column :entrysamples, :station_depth, :float
    add_column :entrysamples, :vis, :float
    add_column :entrysamples, :water_temp, :float
    add_column :entrysamples, :divbegh, :integer
    add_column :entrysamples, :divbegm, :integer    
    add_column :entrysamples, :divendh, :integer
    add_column :entrysamples, :divendm, :integer
    add_column :entrysamples, :sampbegh, :integer
    add_column :entrysamples, :sampbegm, :integer
    add_column :entrysamples, :sampendh, :integer
    add_column :entrysamples, :sampendm, :integer
    add_column :entrysamples, :fishgear, :text
    add_column :entrysamples, :comments, :text
  end

  def down
    remove_column :entrysamples, :comments
    remove_column :entrysamples, :fishgear
    remove_column :entrysamples, :sampendm
    remove_column :entrysamples, :sampendh
    remove_column :entrysamples, :sampbegm
    remove_column :entrysamples, :sampbegh
    remove_column :entrysamples, :divendm
    remove_column :entrysamples, :divendh
    remove_column :entrysamples, :divbegm
    remove_column :entrysamples, :divbegh
    remove_column :entrysamples, :water_temp
    remove_column :entrysamples, :vis
    remove_column :entrysamples, :station_depth
    remove_column :entrysamples, :max_depth
    remove_column :entrysamples, :current
    remove_column :entrysamples, :cylinder_radius
    remove_column :entrysamples, :habitat_type_id
    remove_column :entrysamples, :buddy_name_id
    remove_column :entrysamples, :diver_name_id
    add_column :entrysamples, :diver_name
  end
end
