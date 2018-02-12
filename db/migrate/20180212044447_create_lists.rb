class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.boolean :private
      t.string :title
      
      t.timestamps
    end
  end
end
