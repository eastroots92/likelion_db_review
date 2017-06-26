class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      
      t.integer :host_id
      
      t.string :name, null: false
      t.string :title, null: false
      
      
      t.integer :age, null: false
      t.boolean :gender, null: false

      t.timestamps null: false
    end
  end
end
