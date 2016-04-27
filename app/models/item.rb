class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, :amount, presence: true, length: {in: 2..200}
end
