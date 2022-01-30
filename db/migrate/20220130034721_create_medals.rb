class CreateMedals < ActiveRecord::Migration[6.1]
  def change
    create_table :medals do |t|
      t.string :code
      t.string :name
      t.string :title
      t.integer :weight

      t.timestamps
    end
    add_index :medals, :code, unique: true
    add_index :medals, :name, unique: true
  end
end
