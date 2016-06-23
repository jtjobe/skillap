class CreateSkillers < ActiveRecord::Migration
  def change
    create_table :skillers do |t|
      t.string :first_name
      t.string :last_name
      t.string :social_link_1
      t.string :social_link_2
      t.string :location
      t.text :bio
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
