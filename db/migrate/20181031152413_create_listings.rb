class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.index :user_id
      t.string :item_name
      t.index :item_name
      t.text :description
      t.string :category
      t.index :category
      t.integer :unit_cents
      t.string :unit_description
      t.integer :shipping_per_unit_cents
      t.integer :int_shipping_cents
      t.integer :price_vat
      t.integer :shipping_vat
      t.datetime :offer_expires
      t.datetime :offer_ships
      t.string :currency
      t.integer :minimum_order_cents
      t.integer :maximum_order_cents
      t.boolean :allow_pickup
      t.text :address_line1
      t.text :address_line2
      t.string :town
      t.string :county
      t.string :postcode
      t.string :country
      t.string :phone
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.boolean :deleted
      t.boolean :accepted_for_sale
      t.timestamps
    end
  end
end
