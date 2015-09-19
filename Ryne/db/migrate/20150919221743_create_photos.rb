class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :geolocation
      t.string :emotion
      t.string :season
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
