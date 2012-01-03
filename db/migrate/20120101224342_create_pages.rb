class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.text :keywords
      t.text :content
      t.text :sub_content
      t.integer :parent_id
      t.integer :position

      t.timestamps
    end
  end
end
