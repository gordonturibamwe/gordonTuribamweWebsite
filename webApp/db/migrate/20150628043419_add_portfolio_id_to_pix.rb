class AddPortfolioIdToPix < ActiveRecord::Migration
  def change
    add_column :pixes, :portfolio_id, :integer
  end
end
