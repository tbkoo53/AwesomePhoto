class Pin < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  
  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  # default_scope { order('votes_for DESC') }
  
  acts_as_ordered_taggable_on :category
end
