class Comment < ActiveRecord::Base
  belongs_to :topic

  validates :topic_id, :allow_nil=>false,:presence=>true
  validates :user, :allow_nil=>false,:presence=>true
  validates :post_number, :presence=>true
  validates :content, :allow_nil=>false, :presence=>true
end
