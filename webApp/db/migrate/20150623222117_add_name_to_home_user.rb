class AddNameToHomeUser < ActiveRecord::Migration
  def change
    add_column :home_users, :name, :string
  end
end
