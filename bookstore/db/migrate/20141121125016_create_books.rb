class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :author_id
      t.integer :category_id
      t.float :price

      t.timestamps
    end
  end
end
