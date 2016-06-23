class AddAvatarToSkillers < ActiveRecord::Migration
  def change
    add_column :skillers, :avatar, :string
  end
end
