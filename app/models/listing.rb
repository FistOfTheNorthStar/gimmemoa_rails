class Listing < ApplicationRecord

    scope :all_listings, -> () { order('created_at DESC').where(accepted_for_sale: 'true', deleted: 'false') }
    scope :listing, -> (id) { find_by(id: id).where(accepted_for_sale: 'true', deleted: 'false') }

end
