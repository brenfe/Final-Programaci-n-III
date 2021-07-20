class CreateGarments < ActiveRecord::Migration[6.1]
  def change
    create_table :garments do |t|
      t.references :brand, null: false, foreign_key: true
      t.references :garment_type, null: false, foreign_key: true
      t.string :color
      t.string :description

      t.timestamps
    end
  end
end
