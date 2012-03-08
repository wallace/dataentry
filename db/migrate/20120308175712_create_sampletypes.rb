class CreateSampletypes < ActiveRecord::Migration
  def change
    create_table :sampletypes do |t|
      t.integer :type_id
      t.string :type_name
      t.text :type_descr

      t.timestamps
    end
  end
end
