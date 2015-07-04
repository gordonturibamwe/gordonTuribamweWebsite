class AddCompanyToWork < ActiveRecord::Migration
  def change
    add_column :works, :company, :string
  end
end
