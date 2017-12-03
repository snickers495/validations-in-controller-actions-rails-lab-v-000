class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { is: %w(Fiction Non-Fiction)}, message: "This is need to be either Fiction or Non Fiction."
  validates :content, length: { maximum: 100}, message: "This is need to be at least 100 characters."
end
