class CreateBootyAddress < ActiveRecord::Migration
  def change
    create_table :booty_addresses do |t|
      t.string :street1, index: true
      t.string :apt_number, index: true
      t.string :city, index: true
      t.string :state, index: true
      t.string :zip, index: true

      t.timestamps

      t.index :created_at
      t.index :updated_at
    end
  end
end
