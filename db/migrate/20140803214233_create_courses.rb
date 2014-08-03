class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name
      t.integer :enrollment_id

      t.timestamps
    end

    create_table :enrollments do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
