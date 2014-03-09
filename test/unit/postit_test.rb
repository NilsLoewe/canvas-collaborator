# == Schema Information
#
# Table name: postits
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  content         :text
#  canvas_field_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PostitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
