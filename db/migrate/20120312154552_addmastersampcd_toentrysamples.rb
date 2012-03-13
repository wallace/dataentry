class AddmastersampcdToentrysamples < ActiveRecord::Migration
  def up
    add_column :entrysamples, :mastersampcd,:string
  end

  def down
  end
end
