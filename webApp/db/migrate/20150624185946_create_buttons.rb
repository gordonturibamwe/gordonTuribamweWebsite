class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :name
      t.string :url
      t.references :home_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
