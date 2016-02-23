class Connector < ActiveRecord::Base
  belongs_to :topic
  belongs_to :tag

  validates :tag_id, :allow_nil=>false, :presence=>true
  validates :topic_id, :allow_nil=>false, :presence=>true
end
