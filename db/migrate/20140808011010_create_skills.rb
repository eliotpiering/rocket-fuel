class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :name
      t.text :description
      t.timestamps
    end

    create_table :course_requirements do |t|
      t.integer :skill_id
      t.integer :course_id
    end

    create_table :user_requirements do |t|
      t.integer :skill_id
      t.integer :user_id
    end

    create_table :track_requirements do |t|
      t.integer :skill_id
      t.integer :track_id
    end


  end
end
