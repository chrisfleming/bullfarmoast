class AddAbstractToPages < ActiveRecord::Migration
  def change
    add_column :pages, :abstract, :text
  end
end
