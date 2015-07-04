class AddLocationToWork < ActiveRecord::Migration
  def change
    add_column :works, :location, :string
  end
end
