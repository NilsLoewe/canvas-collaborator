class CreateValuePropositions < ActiveRecord::Migration
  def change
    create_table :value_propositions do |t|
      t.integer :businessmodel_id

      t.timestamps
    end
  end
end
