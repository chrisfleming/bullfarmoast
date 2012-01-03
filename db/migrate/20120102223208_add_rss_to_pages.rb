class AddRssToPages < ActiveRecord::Migration
  def change
    add_column :pages, :rss, :string
  end
end
