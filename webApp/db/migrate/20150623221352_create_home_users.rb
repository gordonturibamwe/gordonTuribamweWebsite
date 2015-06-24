class CreateHomeUsers < ActiveRecord::Migration
  def change
    create_table :home_users do |t|

      t.timestamps null: false
    end
  end
end
