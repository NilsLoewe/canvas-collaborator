class RenameCanvasfieldId < ActiveRecord::Migration
  def up
    rename_column :postits, :canvasfield_id, :canvas_field_id
  end

  def down
  end
end
