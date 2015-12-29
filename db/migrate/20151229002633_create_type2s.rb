class CreateType2s < ActiveRecord::Migration
  def change
    create_table :type2s do |t|
      t.string :head
      t.string :content
      t.integer :count

      t.timestamps
    end
  end
end
