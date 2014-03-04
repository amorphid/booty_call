class BootyAddress < ActiveRecord::Base
  validates :city,
            presence: true

  validates :state,
            presence: true

  validates :street1,
            presence: true

  validates :zip,
            presence: true
end
