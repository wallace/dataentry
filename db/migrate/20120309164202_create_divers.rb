class CreateDivers < ActiveRecord::Migration
  def change
    create_table :divers do |t|
      t.string :diver_id
      t.string :diver_name

      t.timestamps
    end
  end
end
