class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :firstname
      t.string :surname
      t.string :phone
      t.string :email
      t.date :arrival_date
      t.integer :night_count
      t.integer :people
      t.integer :rooms
      t.text :comment

      t.timestamps
    end
  end
end
