class ChangetoIntItemAmount < ActiveRecord::Migration
  def change
  	change_column :items, :amount, :integer
  end
end
