class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.text :name
      t.text :description

      t.timestamps
    end

    create_table :user_tracks do |t|
      t.integer :user_id
      t.integer :track_id
    end

    create_table :course_tracks do |t|
      t.integer :course_id
      t.integer :track_id
    end

  end
end
