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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
