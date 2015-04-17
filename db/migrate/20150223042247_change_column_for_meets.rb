class ChangeColumnForMeets < ActiveRecord::Migration
  def change
    remove_column :meets, :user_id
    add_column :meets, :name, :string
  end
end
