class AddActiveToMem < ActiveRecord::Migration
  def change
    add_column :mems, :active, :boolean
  end
end
