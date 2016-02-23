class Tag < ActiveRecord::Base
  has_many :connectors
  has_many :topics, :through => :connectors

  validates :title, :uniqueness =>true, :allow_nil=>false,:presence=>true
end
