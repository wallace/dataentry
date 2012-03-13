class ChangeTimeFields < ActiveRecord::Migration
  def up
    remove_column :entrysamples, :divbegh
    remove_column :entrysamples, :divbegm
    remove_column :entrysamples, :divendh
    remove_column :entrysamples, :divendm
    remove_column :entrysamples, :sampbegh
    remove_column :entrysamples, :sampbegm
    remove_column :entrysamples, :sampendh
    remove_column :entrysamples, :sampendm

    add_column :entrysamples, :dive_start_time, :time
    add_column :entrysamples, :dive_end_time, :time
    add_column :entrysamples, :sample_start_time, :time
    add_column :entrysamples, :sample_end_time, :time


  end

  def down


    remove_column :entrysamples, :sample_end_time
    remove_column :entrysamples, :sample_start_time
    remove_column :entrysamples, :dive_end_time
    remove_column :entrysamples, :dive_start_time

    add_column :entrysamples, :sampendm
    add_column :entrysamples, :sampendh
    add_column :entrysamples, :sampbegm
    add_column :entrysamples, :sampbegh
    add_column :entrysamples, :divendm
    add_column :entrysamples, :divendh
    add_column :entrysamples, :divbegm
    add_column :entrysamples, :divbegh
  end
end
