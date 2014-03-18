class AddLinkToPostits < ActiveRecord::Migration
  def change
    add_column :postits, :link, :string
  end
end
