class CreateAboutUsers < ActiveRecord::Migration
  def change
    create_table :about_users do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
