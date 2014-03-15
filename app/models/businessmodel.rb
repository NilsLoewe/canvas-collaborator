# == Schema Information
#
# Table name: businessmodels
#
#  id         :integer          not null, primary key
#  token      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Businessmodel < ActiveRecord::Base
  attr_accessible :token

  has_many :canvas_fields
  has_many :comments, as: :commentable
  after_create :generate_token

  protected

  def generate_token
    random_token = SecureRandom.urlsafe_base64(nil, false)
    self.update_attribute(:token, random_token)
  end
end
