class AddIsAdultToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :is_adult, :boolean
  end
end
