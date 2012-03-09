class CreateHabitattypes < ActiveRecord::Migration
  def change
    create_table :habitattypes do |t|
      t.integer :habitat_type_id
      t.string :habitat_name
      t.text :habitat_descr

      t.timestamps
    end
  end
end
