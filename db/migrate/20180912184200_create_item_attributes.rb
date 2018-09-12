class CreateItemAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_attributes do |t|
      t.string :name
      t.integer :power
      t.string :type
      t.references :item, polymorphic: true, index: true
    end
  end
end
