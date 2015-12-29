class CreateType1s < ActiveRecord::Migration
  def change
    create_table :type1s do |t|
      t.string :head
      t.string :content
      t.integer :count

      t.timestamps
    end
  end
end
