class AddPublishedToPages < ActiveRecord::Migration
  def change
    add_column :pages, :published, :boolean
    add_column :attractions, :published, :boolean
    add_column :pages, :parent, :string
  end
end
