class Post < ApplicationRecord
  validates :title,presence:true
  validates :context,presence:true
  validates :slug,presence:true,uniqueness:true
end
