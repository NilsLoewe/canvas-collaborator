class BusinessmodelsController < ApplicationController

  def new
    @businessmodel = Businessmodel.new
    @businessmodel.save
    @businessmodel.canvas_fields.create(:title => "Key Partners")
    @businessmodel.canvas_fields.create(:title => "Key Activities")
    @businessmodel.canvas_fields.create(:title => "Key Resources")
    @businessmodel.canvas_fields.create(:title => "Value Propositions")
    @businessmodel.canvas_fields.create(:title => "Customer Relationships")
    @businessmodel.canvas_fields.create(:title => "Channels")
    @businessmodel.canvas_fields.create(:title => "Customer Segments")
    @businessmodel.canvas_fields.create(:title => "Cost Structure")
    @businessmodel.canvas_fields.create(:title => "Revenue Streams")
    redirect_to @businessmodel
  end

  def show
    @businessmodel = Businessmodel.find(params[:id])
    @keypartners       = @businessmodel.canvas_fields.find_by_title("Key Partners")
    @keyactivities     = @businessmodel.canvas_fields.find_by_title("Key Activities")
    @keyresources      = @businessmodel.canvas_fields.find_by_title("Key Resources")
    @valuepropositions = @businessmodel.canvas_fields.find_by_title("Value Propositions")
    @customerrelations = @businessmodel.canvas_fields.find_by_title("Customer Relationships")
    @channels          = @businessmodel.canvas_fields.find_by_title("Channels")
    @customersegments  = @businessmodel.canvas_fields.find_by_title("Customer Segments")
    @coststructure     = @businessmodel.canvas_fields.find_by_title("Cost Structure")
    @revenuestreams    = @businessmodel.canvas_fields.find_by_title("Revenue Streams")
  end

end
