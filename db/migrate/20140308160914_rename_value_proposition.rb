class RenameValueProposition < ActiveRecord::Migration
  def up
    rename_table :value_propositions, :canvas_fields
  end

  def down
  end
end
