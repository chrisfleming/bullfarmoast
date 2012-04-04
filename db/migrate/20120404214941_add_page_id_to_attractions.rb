class AddPageIdToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :page_id, :integer
  end
end
