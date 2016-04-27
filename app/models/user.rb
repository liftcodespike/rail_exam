class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  has_secure_password
  has_many :purchases, :class_name => 'Sale', :foreign_key => 'buyer_id'
  has_many :sales, :class_name => 'Sale', :foreign_key => 'seller_id'
  has_many :items

end
