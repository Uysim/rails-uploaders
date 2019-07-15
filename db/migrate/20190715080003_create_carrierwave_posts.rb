class CreateCarrierwavePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :carrierwave_posts do |t|
      t.string :title
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
