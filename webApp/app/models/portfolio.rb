class Portfolio < ActiveRecord::Base
  belongs_to :work
  has_many :pixes, dependent: :destroy
end
