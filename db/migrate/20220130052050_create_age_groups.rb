class CreateAgeGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :age_groups do |t|
      t.integer :age
      t.string :gender
      t.string :code
      t.string :name
      t.string :title

      t.timestamps
    end
    add_index :age_groups, :code, unique: true
    add_index :age_groups, %i[age gender], unique: true
  end
end
