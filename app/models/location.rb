class Location < ApplicationRecord
  geocoded_by :address

  after_validation :geocode

  validates :address, presence: true

  def as_json(options={})
    position = {lat: self.latitude, lng: self.longitude}
    {id: self.id, pos: position, address: address, latitude: latitude, longitude: longitude}
  end
end
