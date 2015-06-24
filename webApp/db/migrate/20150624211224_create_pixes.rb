class CreatePixes < ActiveRecord::Migration
  def change
    create_table :pixes do |t|
      t.string :name
      t.string :caption
      t.references :home_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
