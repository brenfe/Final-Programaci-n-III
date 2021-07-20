class CreateBroadcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :broadcasts do |t|
      t.date :date
      t.integer :program_number

      t.timestamps
    end
  end
end
