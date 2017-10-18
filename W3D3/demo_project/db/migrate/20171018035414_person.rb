class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :persons do |t|
      t.string :name
      t.integer :house_id
    end
  end
end
