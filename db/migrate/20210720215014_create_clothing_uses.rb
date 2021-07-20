class CreateClothingUses < ActiveRecord::Migration[6.1]
  def change
    create_table :clothing_uses do |t|
      t.references :broadcast, null: false, foreign_key: true
      t.references :garment, null: false, foreign_key: true
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
