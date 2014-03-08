# == Schema Information
#
# Table name: canvas_fields
#
#  id               :integer          not null, primary key
#  businessmodel_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  title            :string(255)
#

class CanvasField < ActiveRecord::Base
  attr_accessible :businessmodel_id, :title

  belongs_to :businessmodel
end
