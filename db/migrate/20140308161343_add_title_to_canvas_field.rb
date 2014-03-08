class AddTitleToCanvasField < ActiveRecord::Migration
  def change
    add_column :canvas_fields, :title, :string
  end
end
