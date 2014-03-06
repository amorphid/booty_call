class CreateBootyAddress < ActiveRecord::Migration
  def change
    create_table :booty_addresses do |t|
      t.string :street1
      t.index  :street1

      t.string :city
      t.index  :city

      t.string :state
      t.index  :state

      t.string :zip
      t.index  :zip

      t.timestamps

      t.index :created_at
      t.index :updated_at
    end
  end
end
