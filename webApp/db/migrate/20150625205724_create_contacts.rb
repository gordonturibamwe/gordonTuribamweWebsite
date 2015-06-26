class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :tel
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.references :about_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
