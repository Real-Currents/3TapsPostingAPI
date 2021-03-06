class CreateCalculateAnnotaions < ActiveRecord::Migration
  def change
    create_table :calculate_annotations do |t|
      t.string :source, limit: 5
      t.string :category, limit: 5
      t.string :annotation
      t.integer :count_occurrences
      t.integer :total_count
      t.timestamps
    end

    add_index :calculate_annotations, [:source, :category, :annotation], unique: true, name: 'index_on_source_category'
  end
end
