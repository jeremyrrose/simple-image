class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
