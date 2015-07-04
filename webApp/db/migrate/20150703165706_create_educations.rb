class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :title
      t.string :school
      t.string :schoolurl
      t.date :startdate
      t.date :enddate
      t.text :description
      t.references :about_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
