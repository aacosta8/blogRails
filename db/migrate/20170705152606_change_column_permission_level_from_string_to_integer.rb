class ChangeColumnPermissionLevelFromStringToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :permision_level, :string
    add_column :users, :permission_level , :integer, default: 1
  end
end
