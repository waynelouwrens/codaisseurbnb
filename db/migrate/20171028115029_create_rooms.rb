class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.string :listing_name
      t.text :description
      t.string :address
      t.boolean :has_tv
      t.boolean :has_kitchen
      t.boolean :has_airco
      t.boolean :has_heating
      t.boolean :has_internet
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
