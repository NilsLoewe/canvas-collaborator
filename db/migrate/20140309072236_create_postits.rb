class CreatePostits < ActiveRecord::Migration
  def change
    create_table :postits do |t|
      t.string :title
      t.text :content
      t.integer :canvasfield_id

      t.timestamps
    end
  end
end
