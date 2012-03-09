class CreateEntrysamples < ActiveRecord::Migration
  def change
    create_table :entrysamples do |t|
      t.string :diver_name
      t.integer :sample_type_id
      t.date :date

      t.timestamps
    end
  end
end
