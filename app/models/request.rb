class Request < ActiveRecord::Base
  before_validation :update_geocode

  belongs_to :user

  has_and_belongs_to_many :blood_types
  validates_presence_of :blood_types
  validates_presence_of :receptor
  validates_presence_of :location
  validates_presence_of :latitude
  
  attr_accessor :location

  private
  def update_geocode
    geocode = Geokit::Geocoders::GoogleGeocoder3.geocode(location)
    self.latitude = geocode.lat
    self.longitude = geocode.lng
  end
end
