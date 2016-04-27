class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.string :name
      t.string :amount
      t.string :status

      t.timestamps
    end
  end
end
