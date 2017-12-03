class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { is: %w(Fiction Non-Fiction)}, presence: true
  validates :content, length: { maximum: 100}, presence: true
end
