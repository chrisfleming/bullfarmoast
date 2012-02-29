class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.point :latlong, :geographic => true
      t.string :category
      t.string :url
      t.string :ownership
      t.text :description


      t.timestamps
    end
  end
end
