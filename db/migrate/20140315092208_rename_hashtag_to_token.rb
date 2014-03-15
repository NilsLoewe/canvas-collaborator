class RenameHashtagToToken < ActiveRecord::Migration
  def up
    rename_column :businessmodels, :hashtag, :token
  end

  def down
  end
end
