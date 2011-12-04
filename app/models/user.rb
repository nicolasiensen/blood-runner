class User < ActiveRecord::Base
  has_many :authorizations
  belongs_to :blood_type

  def self.create_from_hash!(hash)
    create(:name => hash['user_info']['name'])
  end
end
