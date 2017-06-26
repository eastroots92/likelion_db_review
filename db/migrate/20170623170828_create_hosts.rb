class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      
      t.string :name, null: false
      t.string :pw, null: false
      t.string :title, null: false
      t.text :content
      
      t.integer :age, null: false
      t.boolean :gender, null: false
      
      

      t.timestamps null: false
    end
  end
end
