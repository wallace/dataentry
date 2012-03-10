class ChangeDiversTable < ActiveRecord::Migration
  def up
    remove_column :divers, :diver_id
    add_column :divers, :diver_name_id, :string
  end

  def down
    remove_column :divers, :diver_name_id
    add_column :divers, :diver_id
  end
end
