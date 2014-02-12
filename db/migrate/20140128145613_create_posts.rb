class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :location
      t.string :phone_number
      t.string :email
      t.string :key
      t.belongs_to :category
      t.timestamps
    end
  end
end
