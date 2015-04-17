class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
  belongs_to :user
  has_many :post_edits

  scope :published, -> { where(status: true)}
end
