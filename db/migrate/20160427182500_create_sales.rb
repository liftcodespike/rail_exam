class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :buyer, index: true
      t.references :seller, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
