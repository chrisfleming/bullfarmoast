class AddLightboxToPages < ActiveRecord::Migration
  def change
    add_column :pages, :lightbox, :boolean
  end
end
