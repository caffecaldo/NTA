class CreateYearEndReviews < ActiveRecord::Migration
  def self.up
    create_table :year_end_reviews do |t|
      t.text :note
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :year_end_reviews
  end
end
