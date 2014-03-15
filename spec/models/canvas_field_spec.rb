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

require 'spec_helper'

describe CanvasField do

  let(:businessmodel) { FactoryGirl.create(:businessmodel) }
  before { @canvasfield = businessmodel.canvas_fields.build(title: "My Field") }

  subject { @canvasfield }

  it { should respond_to(:title) }
  it { should respond_to(:businessmodel_id) }

  it { should be_valid }

  describe "accessible attributes" do

    describe "when businessmodel_id is not present" do
      before { @canvasfield.businessmodel_id = nil }
      it { should_not be_valid }
    end

    describe "when title is not present" do
      before { @canvasfield.title = " " }
      it { should_not be_valid }
    end

    describe "when title is too long" do
      before { @canvasfield.title = "a" * 51 }
      it { should_not be_valid }
    end
  end
end
