class CreateShrinePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :shrine_posts do |t|
      t.string :title
      t.text :image_data
      t.string :description

      t.timestamps
    end
  end
end
