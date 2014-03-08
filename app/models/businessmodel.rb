# == Schema Information
#
# Table name: businessmodels
#
#  id         :integer          not null, primary key
#  hashtag    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Businessmodel < ActiveRecord::Base
  attr_accessible :hash

  has_many :canvas_fields
end
