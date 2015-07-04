class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :skills
      t.references :about_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
