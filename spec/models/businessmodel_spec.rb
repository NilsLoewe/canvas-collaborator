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

  describe "accessible attributes" do
    it "should not allow access to token" do
      expect do
        Businessmodel.new(token: "abcdefg")
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end

    describe "when token is not present" do
      before { @businessmodel.token = nil }
      it { should_not be_valid }
    end

    describe "when token is not present" do
      before { @businessmodel.token = " " }
      it { should_not be_valid }
    end

    describe "when token is too long" do
      before { @businessmodel.token = "a" * 51 }
      it { should_not be_valid }
    end
  end

end
