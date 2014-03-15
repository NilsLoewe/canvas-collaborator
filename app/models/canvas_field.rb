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
  has_many :postits
  has_many :comments, as: :commentable

  validates :title, presence: true, length: { maximum: 50 }
  validates :businessmodel_id, presence: true
end
