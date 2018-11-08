class RemoveAddressLine1FromListing < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :address_line1, :text
    remove_column :listings, :address_line2, :text
    remove_column :listings, :town, :string
    remove_column :listings, :county, :string
    remove_column :listings, :postcode, :string
    remove_column :listings, :country, :string
    remove_column :listings, :phone, :string
    
  end
end
