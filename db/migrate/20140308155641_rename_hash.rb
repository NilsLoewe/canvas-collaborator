class RenameHash < ActiveRecord::Migration
  def up
    rename_column :businessmodels, :hash, :hashtag
  end

  def down
  end
end
