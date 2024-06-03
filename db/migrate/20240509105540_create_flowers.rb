class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      t.text :about

      t.timestamps
    end
  end
end
