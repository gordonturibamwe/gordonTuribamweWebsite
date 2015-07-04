class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.date :start
      t.date :end
      t.text :description
      t.string :link
      t.references :about_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
