class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.date :when
      t.text :description
      t.string :link
      t.references :work, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
