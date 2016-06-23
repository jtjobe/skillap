class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :skiller, index: true, foreign_key: true
      t.text :notes
      t.integer :skill_level

      t.timestamps null: false
    end
  end
end
