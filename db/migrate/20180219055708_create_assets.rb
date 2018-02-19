class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|
      t.text :name 
      t.string :make
      t.string :model
      t.string :memory
      t.boolean :return_request, default: false
      t.date :return_request_date
      t.date :returned_date
      t.boolean :lock, default: false
      t.timestamps
    end
  end
end
