class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :user_id
      t.string :video_link
      t.string :artist
      t.string :song

      t.timestamps
    end
  end
end
