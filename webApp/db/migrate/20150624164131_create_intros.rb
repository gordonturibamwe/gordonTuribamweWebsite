class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.text :intro
      t.references :home_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
