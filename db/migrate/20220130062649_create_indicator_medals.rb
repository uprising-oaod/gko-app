class CreateIndicatorMedals < ActiveRecord::Migration[6.1]
  def change
    create_table :indicator_medals do |t|
      t.references :age_group, null: false, foreign_key: true
      t.references :indicator, null: false, foreign_key: true
      t.float :min_value
      t.float :max_value
      t.references :medal, null: false, foreign_key: true

      t.timestamps
    end
    add_index :indicator_medals, %i[age_group_id indicator_id medal_id], name: "index_indicator_medals_uniqueness", unique: true
  end
end
