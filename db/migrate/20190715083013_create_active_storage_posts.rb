class CreateActiveStoragePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :active_storage_posts do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
