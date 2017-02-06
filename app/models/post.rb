# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  context     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  rating      :string
#  slug        :string
#  category_id :integer
#

class Post < ApplicationRecord

  belongs_to        :category

  before_validation :write_slug
  before_save       :titlize_title

  validates :title,     presence:true
  validates :context,   presence:true
  validates :slug,      uniqueness:true
  #validates :rating,    numaricly:tru

  private
  def write_slug
    self.slug = self.title.parameterize
  end
  def titlize_title
    self.title=self.title.titleize
  end
end
