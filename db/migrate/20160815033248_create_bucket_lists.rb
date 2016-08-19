class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.string :name
      t.string :location
      t.text :mates
      t.date :timing
      t.text :comment
      t.text :image
      t.integer :status

      t.timestamps null: false
    end
  end
end
