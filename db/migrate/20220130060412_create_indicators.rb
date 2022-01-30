class CreateIndicators < ActiveRecord::Migration[6.1]
  def change
    create_table :indicators do |t|
      t.string :code
      t.string :name
      t.string :title
      t.string :unit

      t.timestamps
    end
    add_index :indicators, :code, unique: true
  end
end
