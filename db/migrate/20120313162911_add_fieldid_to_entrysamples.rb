class AddFieldidToEntrysamples < ActiveRecord::Migration
  def change
    add_column :entrysamples, :field_id, :string

  end
end
