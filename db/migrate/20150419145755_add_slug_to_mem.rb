class AddSlugToMem < ActiveRecord::Migration
  def change
  	add_column :mems, :slug, :string, unique: true
  end
end
