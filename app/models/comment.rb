# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  comment          :string(255)
#  commentable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  commentable_type :string(255)
#

class Comment < ActiveRecord::Base
  attr_accessible :comment, :commentable_id, :commentable_type
  belongs_to :commentable, polymorphic: true
end
