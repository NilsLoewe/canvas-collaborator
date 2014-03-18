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
#  link            :string(255)
#

class Postit < ActiveRecord::Base
  attr_accessible :canvas_field_id, :content, :title, :link

  belongs_to :canvas_field
end
