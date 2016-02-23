class Subforum < ActiveRecord::Base
  has_many :topics

  validates :title, :uniqueness =>true, :allow_nil=>false,:presence=>true
end
