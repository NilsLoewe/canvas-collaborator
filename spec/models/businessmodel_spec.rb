# == Schema Information
#
# Table name: businessmodels
#
#  id         :integer          not null, primary key
#  token      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Businessmodel do

  before do
    @businessmodel = Businessmodel.new
  end

  subject { @businessmodel }

  it { should respond_to(:token) }
  it { should be_valid }



end
