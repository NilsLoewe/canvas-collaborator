class CreateBusinessmodels < ActiveRecord::Migration
  def change
    create_table :businessmodels do |t|
      t.string :hash

      t.timestamps
    end
  end
end
